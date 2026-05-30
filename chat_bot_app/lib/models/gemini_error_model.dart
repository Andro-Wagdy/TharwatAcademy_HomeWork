import 'package:dio/dio.dart';
import 'package:chat_bot_app/models/gemini_error_details_model.dart';

class GeminiErrorModel {
  static const String defaultMessage = 'Something went wrong';

  const GeminiErrorModel({
    required this.code,
    required this.message,
    required this.status,
    required this.details,
  });

  factory GeminiErrorModel.fromJson(Map<String, dynamic> json) {
    final error = _asMap(json['error']) ?? json;

    return GeminiErrorModel(
      code: _asInt(error['code']),
      message: error['message'] as String? ?? defaultMessage,
      status: error['status'] as String? ?? '',
      details: (error['details'] as List<dynamic>? ?? [])
          .map((details) => GeminiErrorDetailsModel.fromJson(details))
          .toList(),
    );
  }

  factory GeminiErrorModel.fromDioException(DioException exception) {
    final statusCode = exception.response?.statusCode ?? 0;
    final responseData = exception.response?.data;
    final responseMap = _asMap(responseData);

    if (responseMap != null) {
      final errorModel = GeminiErrorModel.fromJson(responseMap);

      return GeminiErrorModel(
        code: errorModel.code == 0 ? statusCode : errorModel.code,
        message: errorModel.message,
        status: errorModel.status,
        details: errorModel.details,
      );
    }

    if (responseData is String && responseData.trim().isNotEmpty) {
      return GeminiErrorModel(
        code: statusCode,
        message: responseData,
        status: exception.type.name,
        details: const [],
      );
    }

    return GeminiErrorModel(
      code: statusCode,
      message: _messageFromDioException(exception),
      status: exception.type.name,
      details: const [],
    );
  }

  factory GeminiErrorModel.fromMessage(String message) {
    return GeminiErrorModel(
      code: 0,
      message: message,
      status: '',
      details: const [],
    );
  }

  final int code;
  final String message;
  final String status;
  final List<GeminiErrorDetailsModel> details;

  bool get hasCode => code != 0;

  bool get hasStatus => status.trim().isNotEmpty;

  bool get hasDetails => details.isNotEmpty;

  bool get isUnauthorized => code == 401;

  bool get isForbidden => code == 403;

  bool get isNotFound => code == 404;

  bool get isRateLimit => code == 429;

  bool get isQuotaExceeded => isRateLimit || status == 'RESOURCE_EXHAUSTED';

  bool get isServerError => code >= 500;

  GeminiErrorDetailsModel? get errorInfoDetails {
    for (final detailsItem in details) {
      if (detailsItem.isErrorInfo) return detailsItem;
    }
    return null;
  }

  GeminiErrorDetailsModel? get localizedMessageDetails {
    for (final detailsItem in details) {
      if (detailsItem.isLocalizedMessage) return detailsItem;
    }
    return null;
  }

  GeminiErrorDetailsModel? get retryInfoDetails {
    for (final detailsItem in details) {
      if (detailsItem.isRetryInfo) return detailsItem;
    }
    return null;
  }

  String get reason => errorInfoDetails?.reason ?? '';

  String get serviceName => errorInfoDetails?.serviceName ?? '';

  String get retryDelay => retryInfoDetails?.retryDelay ?? '';

  bool get isInvalidApiKey => reason == 'API_KEY_INVALID';

  String get displayMessage {
    if (isQuotaExceeded) {
      return 'You exceeded your Gemini API quota. Please try again later.';
    }

    final localizedMessage = localizedMessageDetails?.message ?? '';
    if (localizedMessage.trim().isNotEmpty) return localizedMessage;
    if (message.trim().isNotEmpty) return message;
    if (hasStatus) return status;
    return defaultMessage;
  }

  Map<String, dynamic> toJson() {
    return {
      'error': {
        'code': code,
        'message': message,
        'status': status,
        'details': details.map((detailsItem) => detailsItem.toJson()).toList(),
      },
    };
  }

  static Map<String, dynamic>? _asMap(dynamic data) {
    if (data is Map<String, dynamic>) return data;
    if (data is Map) return Map<String, dynamic>.from(data);
    return null;
  }

  static int _asInt(dynamic value) {
    if (value is int) return value;
    if (value is num) return value.toInt();
    if (value is String) return int.tryParse(value) ?? 0;
    return 0;
  }

  static String _messageFromDioException(DioException exception) {
    switch (exception.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return 'Connection timed out. Please try again.';
      case DioExceptionType.badCertificate:
        return 'Bad certificate. Please check your connection.';
      case DioExceptionType.badResponse:
        return exception.response?.statusMessage ?? 'Server error occurred.';
      case DioExceptionType.cancel:
        return 'Request was cancelled.';
      case DioExceptionType.connectionError:
        return 'No internet connection. Please check your network.';
      case DioExceptionType.unknown:
        return exception.message ?? 'Unexpected error occurred.';
    }
  }
}

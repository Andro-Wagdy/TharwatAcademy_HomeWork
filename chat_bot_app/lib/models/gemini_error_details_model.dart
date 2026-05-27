class GeminiErrorDetailsModel {
  const GeminiErrorDetailsModel({
    required this.type,
    required this.reason,
    required this.domain,
    required this.metadata,
    required this.locale,
    required this.message,
  });

  factory GeminiErrorDetailsModel.fromJson(dynamic json) {
    final map = _asMap(json) ?? {};

    return GeminiErrorDetailsModel(
      type: map['@type'] as String? ?? '',
      reason: map['reason'] as String? ?? '',
      domain: map['domain'] as String? ?? '',
      metadata: _asMap(map['metadata']) ?? {},
      locale: map['locale'] as String? ?? '',
      message: map['message'] as String? ?? '',
    );
  }

  final String type;
  final String reason;
  final String domain;
  final Map<String, dynamic> metadata;
  final String locale;
  final String message;

  bool get isErrorInfo => type.endsWith('google.rpc.ErrorInfo');

  bool get isLocalizedMessage => type.endsWith('google.rpc.LocalizedMessage');

  bool get hasReason => reason.trim().isNotEmpty;

  bool get hasMessage => message.trim().isNotEmpty;

  String get serviceName => metadata['service'] as String? ?? '';

  Map<String, dynamic> toJson() {
    return {
      '@type': type,
      'reason': reason,
      'domain': domain,
      'metadata': metadata,
      'locale': locale,
      'message': message,
    };
  }

  static Map<String, dynamic>? _asMap(dynamic data) {
    if (data is Map<String, dynamic>) return data;
    if (data is Map) return Map<String, dynamic>.from(data);
    return null;
  }
}

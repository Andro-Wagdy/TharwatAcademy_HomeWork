import 'package:chat_bot_app/core/network/gemini_error_model.dart';
import 'package:dio/dio.dart';

class ApiClient {
  final Dio dio = Dio();
  Future<dynamic> post({
    required String url,
    required dynamic data,
    Map<String, dynamic>? headers,
  }) async {
    try {
      var respose = await dio.post(
        url,
        data: data,
        options: Options(headers: headers),
      );
      return respose.data;
    } on DioException catch (e) {
      final errorModel = GeminiErrorModel.fromDioException(e);
      throw Exception(errorModel.displayMessage);
    } catch (_) {
      throw Exception(GeminiErrorModel.defaultMessage);
    }
  }
}

import 'package:chat_bot_app/models/models.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class GeminiService {
  final Dio dio;
  final String baseUrl =
      'https://generativelanguage.googleapis.com/v1beta/models';
  final String apiKey = dotenv.env['API_KEY'] ?? '';
  final String model = 'gemini-3.5-flash';

  GeminiService({required this.dio});

  Future<GeminiResponseModel> sendMessage({required String text}) async {
    return sendMessages(messages: [ChatMessageModel.user(text)]);
  }

  Future<GeminiResponseModel> sendMessages({
    required List<ChatMessageModel> messages,
  }) async {
    try {
      Response response = await dio.post(
        '$baseUrl/$model:generateContent',
        queryParameters: {'key': apiKey},
        data: GeminiRequestModel.fromMessages(messages).toJson(),
      );

      GeminiResponseModel geminiResponse = GeminiResponseModel.fromJson(
        response.data,
      );

      return geminiResponse;
    } on DioException catch (e) {
      final errorModel = GeminiErrorModel.fromDioException(e);
      throw Exception(errorModel.displayMessage);
    } catch (_) {
      throw Exception(GeminiErrorModel.defaultMessage);
    }
  }
}

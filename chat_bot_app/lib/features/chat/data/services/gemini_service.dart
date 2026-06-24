import 'package:chat_bot_app/core/network/api_client.dart';
import 'package:chat_bot_app/features/chat/data/models/models.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class GeminiService {
  final ApiClient apiClient = ApiClient();
  final String baseUrl =
      'https://generativelanguage.googleapis.com/v1beta/models';
  final String apiKey = dotenv.env['API_KEY'] ?? '';
  final String model = 'gemini-2.0-flash';

  Future<GeminiResponseModel> sendMessage({required String text}) async {
    return sendMessages(messages: [ChatMessageModel.user(text)]);
  }

  Future<GeminiResponseModel> sendMessages({
    required List<ChatMessageModel> messages,
  }) async {
    var data = await apiClient.post(
      url: '$baseUrl/$model:generateContent',
      data: GeminiRequestModel.fromMessages(messages).toJson(),
      headers: {'x-goog-api-key': apiKey, 'Content-Type': 'application/json'},
    );
    GeminiResponseModel geminiResponse = GeminiResponseModel.fromJson(data);
    return geminiResponse;
  }
}

import 'package:chat_bot_app/features/chat/data/models/chat_message_model.dart';
import 'package:chat_bot_app/features/chat/data/models/gemini_content_model.dart';

class GeminiRequestModel {
  const GeminiRequestModel({required this.contents});

  factory GeminiRequestModel.fromText(String text) {
    return GeminiRequestModel(contents: [GeminiContent.user(text)]);
  }

  factory GeminiRequestModel.fromMessages(List<ChatMessageModel> messages) {
    return GeminiRequestModel(
      contents: messages
          .where((message) => message.hasText && message.canSendToGemini)
          .map((message) => message.toGeminiContent())
          .toList(),
    );
  }

  final List<GeminiContent> contents;

  Map<String, dynamic> toJson() {
    return {'contents': contents.map((content) => content.toJson()).toList()};
  }
}

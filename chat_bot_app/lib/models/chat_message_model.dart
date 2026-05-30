import 'package:chat_bot_app/models/gemini_content_model.dart';
import 'package:chat_bot_app/models/gemini_response_model.dart';

enum ChatMessageSender { user, bot, error }

class ChatMessageModel {
  const ChatMessageModel({required this.text, required this.sender});

  factory ChatMessageModel.user(String text) {
    return ChatMessageModel(text: text, sender: ChatMessageSender.user);
  }

  factory ChatMessageModel.bot(String text) {
    return ChatMessageModel(text: text, sender: ChatMessageSender.bot);
  }

  factory ChatMessageModel.error(String text) {
    return ChatMessageModel(text: text, sender: ChatMessageSender.error);
  }

  factory ChatMessageModel.fromGeminiContent(GeminiContent content) {
    if (content.isUserRole) return ChatMessageModel.user(content.text);
    return ChatMessageModel.bot(content.text);
  }

  factory ChatMessageModel.fromGeminiResponse(GeminiResponseModel response) {
    return ChatMessageModel.bot(response.answerText);
  }

  factory ChatMessageModel.fromJson(Map<String, dynamic> json) {
    final senderName = json['sender'] as String? ?? '';

    return ChatMessageModel(
      text: json['text'] as String? ?? '',
      sender: ChatMessageSender.values.firstWhere(
        (sender) => sender.name == senderName,
        orElse: () => ChatMessageSender.bot,
      ),
    );
  }

  final String text;
  final ChatMessageSender sender;

  bool get isUser => sender == ChatMessageSender.user;

  bool get isBot => sender == ChatMessageSender.bot;

  bool get isError => sender == ChatMessageSender.error;

  bool get hasText => text.trim().isNotEmpty;

  bool get canSendToGemini => !isError;

  GeminiContent toGeminiContent() {
    if (isUser) return GeminiContent.user(text);
    return GeminiContent.model(text);
  }

  Map<String, dynamic> toJson() {
    return {'text': text, 'sender': sender.name};
  }
}

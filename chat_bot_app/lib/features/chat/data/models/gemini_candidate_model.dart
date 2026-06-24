import 'package:chat_bot_app/features/chat/data/models/gemini_content_model.dart';

class GeminiCandidate {
  const GeminiCandidate({
    required this.content,
    required this.finishReason,
    required this.index,
  });

  factory GeminiCandidate.fromJson(dynamic json) {
    final map = json as Map<String, dynamic>? ?? {};

    return GeminiCandidate(
      content: GeminiContent.fromJson(map['content']),
      finishReason: map['finishReason'] as String? ?? '',
      index: map['index'] as int? ?? 0,
    );
  }

  final GeminiContent content;
  final String finishReason;
  final int index;

  String get text => content.text;

  String get role => content.role;

  bool get isStopped => finishReason == 'STOP';

  Map<String, dynamic> toJson() {
    return {
      'content': content.toJson(),
      'finishReason': finishReason,
      'index': index,
    };
  }
}

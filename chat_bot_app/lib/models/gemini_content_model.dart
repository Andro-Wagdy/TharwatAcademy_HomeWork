import 'package:chat_bot_app/models/gemini_part_model.dart';

class GeminiContent {
  const GeminiContent({
    required this.parts,
    required this.role,
  });

  factory GeminiContent.fromJson(dynamic json) {
    final map = json as Map<String, dynamic>? ?? {};

    return GeminiContent(
      parts: (map['parts'] as List<dynamic>? ?? [])
          .map((part) => GeminiPart.fromJson(part))
          .toList(),
      role: map['role'] as String? ?? '',
    );
  }

  final List<GeminiPart> parts;
  final String role;

  GeminiPart? get firstPart {
    if (parts.isEmpty) return null;
    return parts.first;
  }

  String get text {
    return parts
        .map((part) => part.text)
        .where((text) => text.trim().isNotEmpty)
        .join('\n');
  }

  bool get isModelRole => role == 'model';

  Map<String, dynamic> toJson() {
    return {
      'parts': parts.map((part) => part.toJson()).toList(),
      'role': role,
    };
  }
}

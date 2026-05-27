class GeminiPart {
  const GeminiPart({
    required this.text,
    required this.thoughtSignature,
  });

  factory GeminiPart.fromJson(dynamic json) {
    final map = json as Map<String, dynamic>? ?? {};

    return GeminiPart(
      text: map['text'] as String? ?? '',
      thoughtSignature: map['thoughtSignature'] as String? ?? '',
    );
  }

  final String text;
  final String thoughtSignature;

  bool get hasText => text.trim().isNotEmpty;

  bool get hasThoughtSignature => thoughtSignature.trim().isNotEmpty;

  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'thoughtSignature': thoughtSignature,
    };
  }
}

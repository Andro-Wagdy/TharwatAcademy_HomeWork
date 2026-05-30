class GeminiPart {
  const GeminiPart({required this.text, this.thoughtSignature = ''});

  factory GeminiPart.text(String text) {
    return GeminiPart(text: text);
  }

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
    final json = <String, dynamic>{'text': text};

    if (hasThoughtSignature) {
      json['thoughtSignature'] = thoughtSignature;
    }

    return json;
  }
}

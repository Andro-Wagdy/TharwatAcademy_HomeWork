class GeminiTokenDetails {
  const GeminiTokenDetails({
    required this.modality,
    required this.tokenCount,
  });

  factory GeminiTokenDetails.fromJson(dynamic json) {
    final map = json as Map<String, dynamic>? ?? {};

    return GeminiTokenDetails(
      modality: map['modality'] as String? ?? '',
      tokenCount: map['tokenCount'] as int? ?? 0,
    );
  }

  final String modality;
  final int tokenCount;

  bool get isText => modality == 'TEXT';

  Map<String, dynamic> toJson() {
    return {
      'modality': modality,
      'tokenCount': tokenCount,
    };
  }
}

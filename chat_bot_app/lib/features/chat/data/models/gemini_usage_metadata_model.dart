import 'package:chat_bot_app/features/chat/data/models/gemini_token_details_model.dart';

class GeminiUsageMetadata {
  const GeminiUsageMetadata({
    required this.promptTokenCount,
    required this.candidatesTokenCount,
    required this.totalTokenCount,
    required this.promptTokensDetails,
    required this.thoughtsTokenCount,
    required this.serviceTier,
  });

  factory GeminiUsageMetadata.fromJson(dynamic json) {
    final map = json as Map<String, dynamic>? ?? {};

    return GeminiUsageMetadata(
      promptTokenCount: map['promptTokenCount'] as int? ?? 0,
      candidatesTokenCount: map['candidatesTokenCount'] as int? ?? 0,
      totalTokenCount: map['totalTokenCount'] as int? ?? 0,
      promptTokensDetails: (map['promptTokensDetails'] as List<dynamic>? ?? [])
          .map((details) => GeminiTokenDetails.fromJson(details))
          .toList(),
      thoughtsTokenCount: map['thoughtsTokenCount'] as int? ?? 0,
      serviceTier: map['serviceTier'] as String? ?? '',
    );
  }

  final int promptTokenCount;
  final int candidatesTokenCount;
  final int totalTokenCount;
  final List<GeminiTokenDetails> promptTokensDetails;
  final int thoughtsTokenCount;
  final String serviceTier;

  GeminiTokenDetails? get textPromptTokensDetails {
    for (final details in promptTokensDetails) {
      if (details.modality == 'TEXT') return details;
    }
    return null;
  }

  int get textPromptTokenCount => textPromptTokensDetails?.tokenCount ?? 0;

  Map<String, dynamic> toJson() {
    return {
      'promptTokenCount': promptTokenCount,
      'candidatesTokenCount': candidatesTokenCount,
      'totalTokenCount': totalTokenCount,
      'promptTokensDetails': promptTokensDetails
          .map((details) => details.toJson())
          .toList(),
      'thoughtsTokenCount': thoughtsTokenCount,
      'serviceTier': serviceTier,
    };
  }
}

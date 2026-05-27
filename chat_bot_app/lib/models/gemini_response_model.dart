import 'package:chat_bot_app/models/gemini_candidate_model.dart';
import 'package:chat_bot_app/models/gemini_usage_metadata_model.dart';

class GeminiResponseModel {
  const GeminiResponseModel({
    required this.candidates,
    required this.usageMetadata,
    required this.modelVersion,
    required this.responseId,
  });

  factory GeminiResponseModel.fromJson(Map<String, dynamic> json) {
    return GeminiResponseModel(
      candidates: (json['candidates'] as List<dynamic>? ?? [])
          .map((candidate) => GeminiCandidate.fromJson(candidate))
          .toList(),
      usageMetadata: GeminiUsageMetadata.fromJson(json['usageMetadata']),
      modelVersion: json['modelVersion'] as String? ?? '',
      responseId: json['responseId'] as String? ?? '',
    );
  }

  final List<GeminiCandidate> candidates;
  final GeminiUsageMetadata usageMetadata;
  final String modelVersion;
  final String responseId;

  GeminiCandidate? get firstCandidate {
    if (candidates.isEmpty) return null;
    return candidates.first;
  }

  String get answerText => firstCandidate?.text ?? '';

  bool get hasAnswer => answerText.trim().isNotEmpty;

  String get finishReason => firstCandidate?.finishReason ?? '';

  int get promptTokenCount => usageMetadata.promptTokenCount;

  int get responseTokenCount => usageMetadata.candidatesTokenCount;

  int get totalTokenCount => usageMetadata.totalTokenCount;

  Map<String, dynamic> toJson() {
    return {
      'candidates': candidates.map((candidate) => candidate.toJson()).toList(),
      'usageMetadata': usageMetadata.toJson(),
      'modelVersion': modelVersion,
      'responseId': responseId,
    };
  }
}

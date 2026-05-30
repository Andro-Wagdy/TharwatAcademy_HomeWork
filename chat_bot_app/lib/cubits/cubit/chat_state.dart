part of 'chat_cubit.dart';

@immutable
sealed class ChatState {}

final class ChatInitial extends ChatState {}

final class ChatLoading extends ChatState {}

final class ChatLoaded extends ChatState {
  final GeminiResponseModel geminiResponse;

  ChatLoaded({required this.geminiResponse});
}

final class ChatFailure extends ChatState {
  final String errorMessage;

  ChatFailure({required this.errorMessage});
}

part of 'chat_cubit.dart';

@immutable
sealed class ChatState {
  const ChatState();
}

final class ChatInitial extends ChatState {
  const ChatInitial();
}

final class ChatLoading extends ChatState {
  final List<ChatMessageModel> messages;

  const ChatLoading({required this.messages});
}

final class ChatLoaded extends ChatState {
  final List<ChatMessageModel> messages;
  final GeminiResponseModel geminiResponse;

  const ChatLoaded({required this.messages, required this.geminiResponse});
}

final class ChatFailure extends ChatState {
  final String errorMessage;

  const ChatFailure({required this.errorMessage});
}

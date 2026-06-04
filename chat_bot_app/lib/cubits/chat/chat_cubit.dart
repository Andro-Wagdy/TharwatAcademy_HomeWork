import 'package:chat_bot_app/models/chat_message_model.dart';
import 'package:chat_bot_app/models/gemini_response_model.dart';
import 'package:chat_bot_app/services/gemini_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'chat_state.dart';

class ChatCubit extends Cubit<ChatState> {
  ChatCubit() : super(const ChatInitial());

  final List<ChatMessageModel> _messages = [];
  late GeminiResponseModel geminiResponse;

  Future<void> sendMessage({required String text}) async {
    final messageText = text.trim();
    if (messageText.isEmpty) return;

    _messages.add(ChatMessageModel.user(messageText));
    emit(ChatLoading(messages: List.unmodifiable(_messages)));

    try {
      geminiResponse = await GeminiService(
        dio: Dio(),
      ).sendMessages(messages: _messages);

      _messages.add(ChatMessageModel.bot(geminiResponse.answerText));
      emit(
        ChatLoaded(
          messages: List.unmodifiable(_messages),
          geminiResponse: geminiResponse,
        ),
      );
    } on Exception catch (e) {
      final errorMessage = _cleanErrorMessage(e);
      emit(ChatFailure(errorMessage: errorMessage));
    }
  }

  String _cleanErrorMessage(Exception exception) {
    return exception.toString().replaceFirst('Exception: ', '');
  }
}

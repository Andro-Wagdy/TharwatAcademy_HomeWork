import 'package:chat_bot_app/models/chat_message_model.dart';
import 'package:chat_bot_app/models/gemini_response_model.dart';
import 'package:chat_bot_app/services/gemini_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'chat_state.dart';

class ChatCubit extends Cubit<ChatState> {
  ChatCubit() : super(ChatInitial());

  final List<ChatMessageModel> messages = [];
  late GeminiResponseModel geminiResponse;

  Future<void> sendMessage({required String text}) async {
    final messageText = text.trim();
    if (messageText.isEmpty) return;

    messages.add(ChatMessageModel.user(messageText));
    emit(ChatLoading());

    try {
      geminiResponse = await GeminiService(
        dio: Dio(),
      ).sendMessages(messages: messages);

      messages.add(ChatMessageModel.bot(geminiResponse.answerText));
      emit(ChatLoaded(geminiResponse: geminiResponse));
    } on Exception catch (e) {
      final errorMessage = _cleanErrorMessage(e);
      messages.add(ChatMessageModel.error(errorMessage));
      emit(ChatFailure(errorMessage: errorMessage));
    }
  }

  String _cleanErrorMessage(Exception exception) {
    return exception.toString().replaceFirst('Exception: ', '');
  }
}

import 'package:chat_bot_app/cubits/chat/chat_cubit.dart';
import 'package:chat_bot_app/widgets/app_bar_widget.dart';
import 'package:chat_bot_app/widgets/chat_list_view.dart';
import 'package:chat_bot_app/widgets/chat_suggestions_list_view.dart';
import 'package:chat_bot_app/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _controller = TextEditingController();
  final List<String> explainCategoryTitleList = [
    'Explain Quantum physics',
    'What are wormholes explain like i am 5',
  ];
  final List<String> writeCategoryTitleList = [
    'Write a tweet about global warming',
    'Write a poem about flower and love',
    'Write a rap song lyrics about',
  ];
  final List<String> translateCategoryTitleList = [
    'How do you say “how are you” in korean?',
    'How do you say I love you in french',
    'How can I order food in Russian',
  ];
  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChatCubit(),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: const AppBarWidget(),
        body: Stack(
          children: [
            Positioned.fill(
              child: BlocBuilder<ChatCubit, ChatState>(
                builder: (context, state) {
                  if (state is ChatInitial) {
                    return ChatSuggestionsListView(
                      onTap: (text) {
                        _controller.text = text;
                        _controller.selection = TextSelection.collapsed(
                          offset: _controller.text.length,
                        );
                      },
                      explainCategoryTitleList: explainCategoryTitleList,
                      writeCategoryTitleList: writeCategoryTitleList,
                      translateCategoryTitleList: translateCategoryTitleList,
                    );
                  }
                  return ChatListView();
                },
              ),
            ),
            Positioned(
              right: 24,
              left: 18,
              bottom: 36,
              child: TextFieldWidget(controller: _controller),
            ),
          ],
        ),
      ),
    );
  }
}

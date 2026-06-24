import 'package:chat_bot_app/features/chat/presentation/cubits/chat/chat_cubit.dart';
import 'package:chat_bot_app/core/theme/app_colors.dart';
import 'package:chat_bot_app/features/chat/presentation/ui/widgets/app_bar_widget.dart';
import 'package:chat_bot_app/features/chat/presentation/ui/widgets/chat_list_view.dart';
import 'package:chat_bot_app/features/chat/presentation/ui/widgets/chat_initial_view.dart';
import 'package:chat_bot_app/features/chat/presentation/ui/widgets/chat_input_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _controller = TextEditingController();
  final ScrollController _scrollController = ScrollController();

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
    _controller.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!_scrollController.hasClients) return;

      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChatCubit(),
      child: Scaffold(
        appBar: const AppBarWidget(),
        body: Stack(
          children: [
            Positioned.fill(
              child: BlocConsumer<ChatCubit, ChatState>(
                listener: (context, state) {
                  if (state is ChatFailure) {
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(SnackBar(content: Text(state.errorMessage)));
                  } else if (state is ChatLoaded) {
                    _scrollToBottom();
                  }
                },
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
                  } else if (state is ChatLoading) {
                    return Stack(
                      children: [
                        ChatListView(
                          messages: state.messages,
                          scrollController: _scrollController,
                        ),
                        const Positioned.fill(
                          child: Center(
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                              color: AppColors.loadingIndicator,
                            ),
                          ),
                        ),
                      ],
                    );
                  } else if (state is ChatLoaded) {
                    return ChatListView(
                      messages: state.messages,
                      scrollController: _scrollController,
                    );
                  } else if (state is ChatFailure) {
                    return const SizedBox.shrink();
                  }
                  return const SizedBox.shrink();
                },
              ),
            ),
            Positioned(
              right: 24,
              left: 18,
              bottom: 36,
              child: ChatInputBar(controller: _controller),
            ),
          ],
        ),
      ),
    );
  }
}

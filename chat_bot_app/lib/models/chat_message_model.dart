enum ChatMessageSender {
  user,
  bot,
}

class ChatMessageModel {
  const ChatMessageModel({
    required this.text,
    required this.sender,
  });

  factory ChatMessageModel.user(String text) {
    return ChatMessageModel(
      text: text,
      sender: ChatMessageSender.user,
    );
  }

  factory ChatMessageModel.bot(String text) {
    return ChatMessageModel(
      text: text,
      sender: ChatMessageSender.bot,
    );
  }

  final String text;
  final ChatMessageSender sender;

  bool get isUser => sender == ChatMessageSender.user;

  bool get isBot => sender == ChatMessageSender.bot;

  bool get hasText => text.trim().isNotEmpty;
}

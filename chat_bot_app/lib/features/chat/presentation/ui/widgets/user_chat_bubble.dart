import 'package:chat_bot_app/core/theme/app_colors.dart';
import 'package:chat_bot_app/core/theme/app_styles.dart';
import 'package:flutter/material.dart';

class UserChatBubble extends StatelessWidget {
  const UserChatBubble({super.key, required this.message});
  final String message;
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;

    return Align(
      alignment: .centerRight,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: screenWidth * 0.8),
        child: Container(
          margin: EdgeInsets.only(top: 22, right: 29, bottom: 27),
          padding: EdgeInsets.symmetric(vertical: 18, horizontal: 22),
          decoration: ShapeDecoration(
            color: AppColors.primary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
            ),
          ),
          child: Text(message, softWrap: true, style: AppStyles.userMessage),
        ),
      ),
    );
  }
}

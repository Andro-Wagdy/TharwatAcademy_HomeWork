import 'package:chat_bot_app/core/constants/assets.dart';
import 'package:chat_bot_app/features/chat/presentation/cubits/chat/chat_cubit.dart';
import 'package:chat_bot_app/core/theme/app_colors.dart';
import 'package:chat_bot_app/core/theme/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class ChatInputBar extends StatelessWidget {
  const ChatInputBar({super.key, required TextEditingController controller})
    : _controller = controller;
  final TextEditingController _controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 16),
      decoration: ShapeDecoration(
        color: AppColors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        shadows: [
          BoxShadow(
            color: AppColors.textFieldShadow,
            blurRadius: 20,
            offset: Offset(5, 4),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Theme(
        data: Theme.of(context).copyWith(
          textSelectionTheme: const TextSelectionThemeData(
            selectionHandleColor: Colors.transparent,
          ),
        ),
        child: TextField(
          controller: _controller,
          onSubmitted: (value) {
            _controller.text = value;
          },
          style: AppStyles.textFieldInput,
          cursorColor: AppColors.primary,

          decoration: InputDecoration(
            suffixIcon: Row(
              mainAxisSize: .min,
              children: [
                SvgPicture.asset(Assets.assetsImagesMicrophone),
                SizedBox(width: 7),
                GestureDetector(
                  onTap: () {
                    BlocProvider.of<ChatCubit>(
                      context,
                    ).sendMessage(text: _controller.text);
                    _controller.clear();
                  },
                  child: SvgPicture.asset(Assets.assetsImagesSend),
                ),
              ],
            ),
            hintText: 'Write Your Message',
            hintStyle: AppStyles.textFieldHint,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: AppColors.white),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: AppColors.white),
            ),
          ),
        ),
      ),
    );
  }
}

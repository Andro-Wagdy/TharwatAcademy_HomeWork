import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
    required TextEditingController controller,
    required this.onSend,
  }) : _controller = controller;
  final TextEditingController _controller;
  final void Function() onSend;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        shadows: [
          BoxShadow(
            color: Color(0x21000000),
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
          style: TextStyle(
            color: const Color(0xFF3369FF),
            fontSize: 13,
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w700,
          ),
          cursorColor: const Color(0xFF3369FF),

          decoration: InputDecoration(
            suffixIcon: Row(
              mainAxisSize: .min,
              children: [
                SvgPicture.asset('assets/images/microphone.svg'),
                SizedBox(width: 7),
                GestureDetector(
                  onTap: onSend,
                  child: SvgPicture.asset('assets/images/send.svg'),
                ),
              ],
            ),

            hintText: 'Write Your Message',
            hintStyle: TextStyle(
              color: const Color(0xFFA1A1A1),
              fontSize: 13,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w700,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

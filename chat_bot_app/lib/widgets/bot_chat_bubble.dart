import 'package:flutter/material.dart';

class BotChatBubble extends StatelessWidget {
  const BotChatBubble({super.key, required this.message});
  final String message;
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;

    return Align(
      alignment: .centerLeft,
      child: Row(
        crossAxisAlignment: .end,
        mainAxisSize: .min,
        children: [
          RobotContainer(),
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: screenWidth * 0.66),
            child: Container(
              margin: EdgeInsets.only(top: 22, left: 7, bottom: 27),
              padding: EdgeInsets.symmetric(vertical: 18, horizontal: 22),
              decoration: ShapeDecoration(
                color: Color(0xFFEEEEEE),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                  ),
                ),
              ),
              child: Text(
                message,
                softWrap: true,
                style: TextStyle(color: Color(0xFF4F4F4F)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RobotContainer extends StatelessWidget {
  const RobotContainer({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 38,
      height: 42,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      margin: EdgeInsets.only(left: 29),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: CircleBorder(),
        shadows: [
          BoxShadow(
            color: Color(0x0C000000),
            blurRadius: 1.96,
            offset: Offset(0, 1.96),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 4.91,
        children: [
          Container(
            width: 11.77,
            height: 17.66,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/robot.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

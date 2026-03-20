import 'package:flutter/material.dart';
import 'package:session14_home_work/widgets/custom_elevated_button.dart';

class ElevatedActionButtonsSection extends StatelessWidget {
  const ElevatedActionButtonsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomeElvatedButton(
            text: Text(
              'Settings',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            color: Color(0xff2196f3),
            elevation: 3,
            radius: 10,
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          child: CustomeElvatedButton(
            text: Text(
              'Profile',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            color: Color(0xffff9700),
            elevation: 3,
            radius: 10,
          ),
        ),
      ],
    );
  }
}

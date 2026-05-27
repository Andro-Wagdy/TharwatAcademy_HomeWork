import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0.01,
      elevation: 0.01,
      shadowColor: Color(0xFFEBEBEB),
      backgroundColor: Colors.white,
      leading: Image.asset('assets/images/arrow-left.png', scale: 4),
      title: Row(
        mainAxisSize: .min,
        children: [
          Image.asset('assets/images/robot.png', scale: 4),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: .start,
            children: [
              Text(
                'ChatGPT',
                style: TextStyle(
                  color: const Color(0xFF3369FF),
                  fontSize: 20,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 1),
              Row(
                mainAxisSize: .min,
                children: [
                  Container(
                    width: 6,
                    height: 6,
                    decoration: ShapeDecoration(
                      color: const Color(0xFF3ABF37),
                      shape: OvalBorder(),
                    ),
                  ),
                  SizedBox(width: 5),
                  Text(
                    'Online',
                    style: TextStyle(
                      color: const Color(0xFF3ABF37),
                      fontSize: 17,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      actions: [
        SvgPicture.asset('assets/images/volume-high.svg', fit: .cover),
        Padding(
          padding: const EdgeInsets.only(left: 19, right: 29),
          child: SvgPicture.asset('assets/images/export-icon.svg', fit: .cover),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

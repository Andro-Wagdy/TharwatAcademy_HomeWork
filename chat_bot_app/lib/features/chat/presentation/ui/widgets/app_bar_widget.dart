import 'package:chat_bot_app/core/constants/assets.dart';
import 'package:chat_bot_app/core/theme/app_colors.dart';
import 'package:chat_bot_app/core/theme/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0.01,
      elevation: 0.01,
      shadowColor: AppColors.appBarShadow,
      backgroundColor: AppColors.white,
      leading: Image.asset(Assets.assetsImagesArrowLeft, scale: 4),
      title: Row(
        mainAxisSize: .min,
        children: [
          Image.asset(Assets.assetsImagesRobot, scale: 4),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: .start,
            children: [
              Text('ChatGPT', style: AppStyles.appBarTitle),
              SizedBox(height: 1),
              Row(
                mainAxisSize: .min,
                children: [
                  Container(
                    width: 6,
                    height: 6,
                    decoration: ShapeDecoration(
                      color: AppColors.online,
                      shape: OvalBorder(),
                    ),
                  ),
                  SizedBox(width: 5),
                  Text('Online', style: AppStyles.onlineStatus),
                ],
              ),
            ],
          ),
        ],
      ),
      actions: [
        SvgPicture.asset(Assets.assetsImagesVolumeHighSvg, fit: .cover),
        Padding(
          padding: const EdgeInsets.only(left: 19, right: 29),
          child: SvgPicture.asset(
            Assets.assetsImagesExportIconSvg,
            fit: .cover,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

import 'package:flutter/material.dart';
import 'package:grocery_store_app/core/theme/app_colors.dart';
import 'package:grocery_store_app/widgets/view_background_widget.dart';

class CreateAccountView extends StatelessWidget {
  const CreateAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ViewBackgroundWidget(
        child: Align(
          alignment: .bottomCenter,
          child: Container(
            height: MediaQuery.sizeOf(context).height * 480 / 812,
            width: MediaQuery.sizeOf(context).width,
            decoration: ShapeDecoration(
              color: AppColors.primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

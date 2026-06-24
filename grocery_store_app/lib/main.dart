import 'package:flutter/material.dart';
import 'package:grocery_store_app/core/theme/app_colors.dart';
import 'package:grocery_store_app/features/auth/presentation/ui/create_account_view.dart';

void main() {
  runApp(const GroceryStoreApp());
}

class GroceryStoreApp extends StatelessWidget {
  const GroceryStoreApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.primary,
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: AppColors.borderFocused,
          selectionColor: AppColors.borderFocused,
          selectionHandleColor: Colors.transparent,
        ),
      ),
      home: const CreateAccountView(),
    );
  }
}

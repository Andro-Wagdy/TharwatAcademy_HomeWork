import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grocery_store_app/core/shared_preferences_singleton.dart';
import 'package:grocery_store_app/core/theme/app_colors.dart';
import 'package:grocery_store_app/features/auth/presentation/cubits/user/user_cubit.dart';
import 'package:grocery_store_app/features/onboarding/presentation/ui/onboarding_view.dart';
import 'package:grocery_store_app/features/splash/presentation/ui/splash_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await SharedPreferencesSingleton.init();
  runApp(const GroceryStoreApp());
}

class GroceryStoreApp extends StatelessWidget {
  const GroceryStoreApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => UserCubit())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: AppColors.primary,
          textSelectionTheme: TextSelectionThemeData(
            cursorColor: AppColors.borderFocused,
            selectionColor: AppColors.borderFocused,
            selectionHandleColor: Colors.transparent,
          ),
        ),
        home: const SplashView(),
      ),
    );
  }
}

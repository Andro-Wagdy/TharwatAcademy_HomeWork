import 'package:chat_bot_app/screens/splash_screen.dart';
import 'package:chat_bot_app/shared_preferences_singleton.dart';
import 'package:chat_bot_app/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferencesSingleton.init();
  await dotenv.load(fileName: ".env");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: AppColors.white),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}

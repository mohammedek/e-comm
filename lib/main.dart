import 'package:e_comm_app/screens/login_page.dart';
import 'package:e_comm_app/utils/app_coloes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.kPrimaryColor)
      ),
      home: const OnBoardingScreen()
    );
  }
}


class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //  in here we check the user is logged in or not and redirecte
    return LoginScreen();
  }
}

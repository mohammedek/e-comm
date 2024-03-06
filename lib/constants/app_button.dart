import 'package:e_comm_app/utils/app_coloes.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String text;
  final Function() onPress;
  const AppButton({super.key, required this.text, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ElevatedButton(
      onPressed: onPress,
      style: ElevatedButton.styleFrom(
        elevation: 4,
        backgroundColor: AppColors.kPrimaryColor,
          shape: const RoundedRectangleBorder(
              side: BorderSide(color: AppColors.kSecondryColor))),
      child: Text(text),
    ));
  }
}

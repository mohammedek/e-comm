import 'package:e_comm_app/utils/app_coloes.dart';
import 'package:flutter/material.dart';

class AppTextFeild extends StatelessWidget {
  final String hintText;
  final bool isPass;
  final TextEditingController controller;
  const AppTextFeild({super.key, required this.hintText, this.isPass = false, required this.controller,});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      height: 54,
      width: screenSize.width / 1.4,
      child: TextField(
        maxLength: 25,
        controller: controller,
        obscureText: isPass,

        decoration: InputDecoration(
          counter: SizedBox(),
            hintText: hintText,
            border: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.kSecondryColor))),
      ),
    );
  }
}

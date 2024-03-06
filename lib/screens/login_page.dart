import 'package:e_comm_app/constants/app_button.dart';
import 'package:e_comm_app/constants/app_text_fields.dart';
import 'package:e_comm_app/screens/products_screen.dart';
import 'package:e_comm_app/utils/app_textstyles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

TextEditingController nameController = TextEditingController();
TextEditingController passWordControler = TextEditingController();
bool isCheck = false;

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "The",
                    textAlign: TextAlign.left,
                    style: AppTextStyles.kTitleMedText.copyWith(
                      fontSize: 22,
                    ),
                  ),
                  Text(
                    "Online Shop",
                    textAlign: TextAlign.center,
                    style: AppTextStyles.kHeaderText.copyWith(fontSize: 34),
                  ),
                ],
              ),
              const Gap(35),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AppTextFeild(
                    hintText: 'Name',
                    isPass: false,
                    controller: nameController,
                  ),
                  const Gap(10),
                  AppTextFeild(
                    hintText: 'Password',
                    isPass: true,
                    controller: passWordControler,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(
                            value: isCheck,
                            onChanged: (value) {
                              setState(() {
                                isCheck = value!;
                              });
                            }),
                        Text(
                          "Remember ",
                          style: AppTextStyles.kTitleMedText
                              .copyWith(fontSize: 16),
                        )
                      ],
                    ),
                  ),
                  Center(
                    child: AppButton(
                        text: "Submit",
                        onPress: () {
                          // check the validation
                          setState(() {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProductsScreen()));
                          });
                        }),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

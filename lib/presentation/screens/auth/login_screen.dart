import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:saulefna/core/app_color.dart';
import 'package:saulefna/core/asset_path.dart';
import 'package:saulefna/core/string_manager.dart';
import 'package:saulefna/presentation/screens/auth/reset_password.dart';
import 'package:saulefna/presentation/screens/auth/signup_screen.dart';
import 'package:saulefna/presentation/widgets/custom_button.dart';
import 'package:saulefna/presentation/widgets/custom_text_feild.dart';
import 'package:saulefna/presentation/widgets/login_with_social_Icons.dart';
import 'package:saulefna/routes.dart';

import '../../../core/config_size.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool passwordVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                height: ConfigSize.screenHeight! * .09,
              ),
              Column(
                children: [
                  Center(child: Image.asset(AssetsPath.logo)),
                  Text(
                    StringManager.halaWGala,
                    style: TextStyle(
                      color: primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: ConfigSize.screenHeight! * .032,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    StringManager.tara,
                    style: TextStyle(
                      color: primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: ConfigSize.screenHeight! * .015,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: ConfigSize.screenHeight! * .03,
              ),
              Text(
                StringManager.login,
                style: TextStyle(
                  color: primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: ConfigSize.screenHeight! * .020,
                ),
              ),
              SizedBox(
                height: ConfigSize.screenHeight! * .02,
              ),
              CustomTextField(

                keyboardType: TextInputType.phone,
                prefixIcon: InternationalPhoneNumberInput(
                  onInputChanged: (PhoneNumber value) {},
                ),
                hintText: '0123456789',
              ),
              SizedBox(
                height: ConfigSize.screenHeight! * .02,
              ),
              Text(
                StringManager.password,
                style: TextStyle(
                  color: primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: ConfigSize.screenHeight! * .020,
                ),
              ),
              SizedBox(
                height: ConfigSize.screenHeight! * .02,
              ),
               CustomTextField(
                obscureText: passwordVisible,

                keyboardType: TextInputType.text,
                 prefixIcon:IconButton(
                   onPressed: () {
                     setState(() {
                       passwordVisible = !passwordVisible;
                     });
                   },
                   icon: Icon(
                       passwordVisible ? Icons.visibility : Icons.visibility_off),
                 ),

                 hintText: '***************',
              ),
              SizedBox(
                height: ConfigSize.screenHeight! * .02,
              ),
              InkWell(
                onTap: () {
                   Navigator.pushNamed(context, Routes.resetPassword);
                },
                child: Text(
                  StringManager.forgetPassword,
                  style: TextStyle(
                    color: resetPasswordColor,
                    decoration: TextDecoration.underline,
                    decorationColor: resetPasswordColor,
                    fontWeight: FontWeight.w400,
                    fontSize: ConfigSize.screenHeight! * .014,
                  ),
                ),
              ),
              SizedBox(
                height: ConfigSize.screenHeight! * .02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, Routes.signUp);

                      },
                      child: const Text(
                        StringManager.signUp,
                        style: TextStyle(color: textButtonColor),
                      )),
                  SizedBox(
                    width: ConfigSize.screenWidth! * .03,
                  ),
                  CustomButton(
                    text: StringManager.login,
                    onPressed: () {
                      Navigator.pushNamed(context, Routes.massageScreen);
                    },
                  ),
                ],
              ),
              SizedBox(
                height: ConfigSize.screenHeight! * .05,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: ConfigSize.screenWidth! * .18,
                ),
                child: const Row(children: [
                  Expanded(
                      child: Divider(
                    color: primaryColor,
                    thickness: 3,
                  )),
                  Text(
                    StringManager.or,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: primaryColor),
                  ),
                  Expanded(
                      child: Divider(
                    color: primaryColor,
                    thickness: 3,
                  )),
                ]),
              ),
              SizedBox(
                height: ConfigSize.screenHeight! * .05,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: ConfigSize.screenWidth! * .20,
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SocialIcon(assetPath: AssetsPath.facebookIcon),
                    SocialIcon(assetPath: AssetsPath.googleIcon),
                    SocialIcon(assetPath: AssetsPath.tiktokIcon),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

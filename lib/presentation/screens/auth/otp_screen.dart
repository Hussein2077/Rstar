import 'package:flutter/material.dart';
import 'package:saulefna/core/string_manager.dart';
import 'package:saulefna/presentation/screens/auth/change_password_screen.dart';
import 'package:saulefna/presentation/widgets/custom_button.dart';
import 'package:saulefna/routes.dart';
import 'package:sms_otp_auto_verify/sms_otp_auto_verify.dart';

import '../../../core/app_color.dart';
import '../../../core/asset_path.dart';
import '../../../core/config_size.dart';
import '../../widgets/app_bar.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [

            const CustomAppBar(text: StringManager.signUp),
            SizedBox(
              height: ConfigSize.screenHeight! * .08,
            ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,

              children: [
              Center(child: Image.asset(AssetsPath.otbLogo)),
              SizedBox(
                height: ConfigSize.screenHeight! * .02,
              ),
              Text(
                StringManager.confirmationCode,
                style: TextStyle(
                  fontSize: ConfigSize.screenHeight! * .028,
                  fontWeight: FontWeight.bold,
                  color: AppColor.blackColor,
                ),
              ),
              Stack(
                children: [
                  RichText(
                      textDirection: TextDirection.rtl,
                      text: TextSpan(
                          text: StringManager.sentCode,
                          style: TextStyle(
                            fontSize: ConfigSize.screenHeight! * .018,
                            fontWeight: FontWeight.bold,
                            color: AppColor.blackColor,
                          ),
                          children: [
                            TextSpan(
                              text: ' 2001234567890+',
                              style: TextStyle(
                                fontSize: ConfigSize.screenHeight! * .018,
                                fontWeight: FontWeight.bold,
                                color: AppColor.buttonColor,
                              ),
                            ),
                          ])),
                  Positioned(
                      top: 30,
                      right: 190,
                      child: Container(
                          color: AppColor.resetPasswordColor.withOpacity(.2),
                          height: ConfigSize.screenHeight! * .028,
                          width: ConfigSize.screenWidth! * .134,
                          child: InkWell(
                            onTap: () {},
                            child: const Center(
                              child: Text(
                                StringManager.changePassword,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 10,
                                    color: AppColor.resetPasswordColor),
                              ),
                            ),
                          )))
                ],
              ),
              SizedBox(
                height: ConfigSize.screenHeight! * .016,
              ),
              TextFieldPin(
                autoFocus: false,
                onChange: (value) {},
                defaultBoxSize: 48,
                margin: 7,
                defaultDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  border: Border.all(
                    color: AppColor.buttonColor,
                  ),
                ),
                selectedDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  border: Border.all(
                    color:AppColor. primaryColor,
                  ),
                ),
              ),
              SizedBox(
                height: ConfigSize.screenHeight! * .079,
              ),
              Center(
                  child: CustomButton(
                      text: StringManager.confirm,
                      onPressed: () {
                        Navigator.pushNamed(context, Routes.changePassword);
                      }))
            ],),
          )
          ],
        ),
      ),
    );
  }
}

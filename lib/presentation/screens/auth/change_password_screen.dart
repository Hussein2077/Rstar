import 'package:flutter/material.dart';
import 'package:saulefna/presentation/widgets/custom_button.dart';
import 'package:saulefna/presentation/widgets/custom_text_feild.dart';

import '../../../core/app_color.dart';
import '../../../core/config_size.dart';
import '../../../core/string_manager.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  bool passwordVisible = true;
  bool passwordVisibleConfirm = true;


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              height: ConfigSize.screenHeight! * .10,
            ),
            Center(
              child: Text(
                StringManager.forgetPassword,
                style: TextStyle(
                  fontSize: ConfigSize.screenHeight! * .028,
                  fontWeight: FontWeight.bold,
                  color: primaryColor,
                ),
              ),
            ),
            SizedBox(
              height: ConfigSize.screenHeight! * .028,
            ),
            Text(
              StringManager.pleaseEnterYourPassword,
              style: TextStyle(
                fontSize: ConfigSize.screenHeight! * .018,
                fontWeight: FontWeight.bold,
                color: blackColor,
              ),
            ),
            SizedBox(
              height: ConfigSize.screenHeight! * .028,
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
              height: ConfigSize.screenHeight! * .028,
            ),
            Text(
              StringManager.confirmPassword,
              style: TextStyle(
                fontSize: ConfigSize.screenHeight! * .018,
                fontWeight: FontWeight.bold,
                color: blackColor,
              ),
            ),
            SizedBox(
              height: ConfigSize.screenHeight! * .028,
            ),
             CustomTextField(
              obscureText: passwordVisibleConfirm,
              keyboardType: TextInputType.text,
              prefixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    passwordVisibleConfirm = !passwordVisibleConfirm;
                  });
                },
                icon: Icon(
                    passwordVisibleConfirm ? Icons.visibility : Icons.visibility_off),
              ),
              hintText: '***************',
            ),  SizedBox(
              height: ConfigSize.screenHeight! * .08,
            ),
            CustomButton(text: StringManager.next, onPressed: () {})
          ],
        ),
      ),
    );
  }
}

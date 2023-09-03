import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
 import 'package:saulefna/presentation/widgets/custom_button.dart';
import 'package:saulefna/routes.dart';

import '../../../core/app_color.dart';
 import '../../../core/config_size.dart';
import '../../../core/string_manager.dart';
import '../../widgets/app_bar.dart';
import '../../widgets/custom_text_feild.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool visible = false;
  bool passwordVisible = true;
  bool phoneValidate = false;
  bool passwordValidate = false;
  late TextEditingController phoneController;
  late TextEditingController passwordController;

  @override
  void initState() {
    phoneController = TextEditingController();
    passwordController = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    passwordController.dispose();
    phoneController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const CustomAppBar(text: StringManager.signUp),
         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 24),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.end,

             children: [
               SizedBox(
                 height: ConfigSize.screenHeight! * .03,
               ),
               Text(
                 StringManager.pleaseEnterYourPhone,
                 style: TextStyle(
                   fontSize: ConfigSize.screenHeight! * .018,
                   fontWeight: FontWeight.bold,
                   color: AppColor.blackColor,
                 ),
               ),
               SizedBox(
                 height: ConfigSize.screenHeight! * .017,
               ),
               CustomTextField(
                 valid: phoneValidate ? 'please Enter your phone' : null,
                 keyboardType: TextInputType.phone,
                 prefixIcon: InternationalPhoneNumberInput(
                   textFieldController: phoneController,
                   onInputChanged: (PhoneNumber value) {},
                 ),
               ),
               SizedBox(
                 height: ConfigSize.screenHeight! * .03,
               ),
               Visibility(
                 visible: visible,
                 child: Column(
                   children: [
                     CustomTextField(
                       valid:
                       passwordValidate ? 'please Enter your password' : null,
                       controller: passwordController,
                       obscureText: passwordVisible,
                       keyboardType: TextInputType.text,
                       prefixIcon: IconButton(
                         onPressed: () {
                           setState(() {
                             passwordVisible = !passwordVisible;
                           });
                         },
                         icon: Icon(passwordVisible
                             ? Icons.visibility
                             : Icons.visibility_off),
                       ),
                       hintText: '***************',
                     ),
                     SizedBox(
                       height: ConfigSize.screenHeight! * .03,
                     ),
                   ],
                 ),
               ),
               CustomButton(
                   text: StringManager.next,
                   onPressed: () {
                     setState(() {
                       phoneController.text.isEmpty
                           ? phoneValidate = true
                           : phoneValidate = false;

                       passwordController.text.isEmpty
                           ? passwordValidate = true
                           : passwordValidate = false;

                     });
                     if (!phoneValidate) {
                       setState(() {
                         visible = true;

                         if (passwordValidate == false) {
                           Navigator.pushNamed(context, Routes.otp);
                         }
                       });
                     }
                   }),
             ],
           ),
         ),
        ],
      ),
    );
  }
}

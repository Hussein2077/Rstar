import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:saulefna/core/app_color.dart';
import 'package:saulefna/core/string_manager.dart';
import 'package:saulefna/presentation/widgets/app_bar.dart';
import 'package:saulefna/presentation/widgets/custom_button.dart';
import 'package:saulefna/routes.dart';

import '../../../core/config_size.dart';
import '../../widgets/custom_text_feild.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(

        children: [
          const CustomAppBar(text: StringManager.forgetPassword),
          SizedBox(height:ConfigSize.screenHeight!*.03,),
          Text(
           StringManager.pleaseEnterYourPhoneReset,
            style: TextStyle(
              fontSize: ConfigSize.screenHeight!*.018,
              fontWeight: FontWeight.bold,
              color: blackColor,
            ),
          ),
          SizedBox(height: ConfigSize.screenHeight!*.017,),
          CustomTextField(
            keyboardType: TextInputType.phone,
            prefixIcon: InternationalPhoneNumberInput(

              onInputChanged: (PhoneNumber value) {  },

            ),

          ),
          SizedBox(height: ConfigSize.screenHeight!*.07,),
          Padding(
            padding:  EdgeInsets.only(left: ConfigSize.screenWidth!*.5),
            child: CustomButton(text: StringManager.next, onPressed: (){
          Navigator.pushNamed(context, Routes.otp);
            }),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:saulefna/core/app_color.dart';
import 'package:saulefna/core/config_size.dart';

import '../../core/string_manager.dart';
class HistoryContainer extends StatelessWidget {
  const HistoryContainer({Key? key, required this.leftText, required this.rightText}) : super(key: key);
final String leftText;
  final String rightText;

  @override
  Widget build(BuildContext context) {
    return   Container(
      height: ConfigSize.screenHeight!*.06,
      width:  ConfigSize.screenWidth!*.4,

      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadiusDirectional.circular(15)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(leftText,style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: primaryColor
          ),),
          Text(rightText,style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600, color: primaryColor
          ),),

        ],
      ),
    );
  }
}

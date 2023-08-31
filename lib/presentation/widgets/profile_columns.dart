import 'package:flutter/material.dart';
import 'package:saulefna/core/app_color.dart';
class ProfileColumns extends StatelessWidget {
  const ProfileColumns({Key? key, required this.topText, required this.bottomText,  this.isDividerVisible=true}) : super(key: key);
final String topText;
final String bottomText;
final bool isDividerVisible;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
              Text(topText,style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
        color: primaryColor,
              ),),
            Text(bottomText,style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: primaryColor,
            ),),
          ],
        ),
        Visibility(
            visible: isDividerVisible,
    child: const SizedBox(
          height: 50,
          child: VerticalDivider(color: hintColor,indent: 2,),
        ))
      ],
    );
  }
}

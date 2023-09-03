import 'package:flutter/material.dart';
import 'package:saulefna/core/app_color.dart';

class IconsColumn extends StatelessWidget {
  const IconsColumn(
      {Key? key, required this.image, required this.text, this.onTap})
      : super(key: key);
  final String image;
  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Container(
              height: 55,
              child: Image.asset(image)),
          SizedBox(height: 5,),
          Text(text,

          style: TextStyle(
            color:AppColor. primaryColor,
            fontWeight: FontWeight.w600,
            fontSize: 14
          ),),
        ],
      ),
    );
  }
}

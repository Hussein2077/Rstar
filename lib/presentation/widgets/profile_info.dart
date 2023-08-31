import 'package:flutter/material.dart';
class ProfileInfo extends StatelessWidget {
  const ProfileInfo({Key? key, required this.text, required this.icon, this.onTap}) : super(key: key);
final String text;
final Widget icon;
final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(onTap: onTap,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
                   const Icon(Icons.arrow_back_ios),
                  Row(
                    children: [
                      Text(text,style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),),
                      const SizedBox(width: 10,),
                      icon,


                    ],
                  )
            ],
          ),
        ),
        const SizedBox(height: 30,)
      ],
    );
  }
}

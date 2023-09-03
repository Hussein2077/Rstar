import 'package:flutter/material.dart';
import 'package:saulefna/core/config_size.dart';
import 'package:saulefna/core/string_manager.dart';

import '../../core/app_color.dart';

class HistoryLongContainer extends StatelessWidget {
  const HistoryLongContainer(
      {Key? key,
      required this.days,
      required this.hours,
      required this.diamonds})
      : super(key: key);
  final String days;
  final String hours;
  final String diamonds;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ConfigSize.screenHeight! * .06,
      width: ConfigSize.screenWidth! * .9,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadiusDirectional.circular(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              Text(
                diamonds,
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: AppColor.primaryColor),
              ),const SizedBox(width: 5,),
              const Text(
                StringManager.diamonds,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: AppColor.primaryColor),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                hours,
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: AppColor.primaryColor),
              ),const SizedBox(width: 5,),
              const Text(
                StringManager.hours,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: AppColor.primaryColor),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                days,
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: AppColor.primaryColor),
              ),const SizedBox(width: 5,),
              const Text(
                StringManager.days,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color:AppColor. primaryColor),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

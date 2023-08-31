import 'package:flutter/material.dart';
import 'package:saulefna/core/config_size.dart';
import 'package:saulefna/core/string_manager.dart';
import 'package:saulefna/presentation/widgets/app_bar.dart';
import 'package:saulefna/presentation/widgets/history_container.dart';
import 'package:saulefna/presentation/widgets/history_long_container.dart';

import '../../core/app_color.dart';

class HistoryLife extends StatelessWidget {
  const HistoryLife({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const CustomAppBar(text: StringManager.historyLife),
          SizedBox(
            height: ConfigSize.screenHeight! * .06,
          ),
          Center(
            child: Container(
              height: 69,
              width: 163,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadiusDirectional.circular(15),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'سهل مهدي',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: primaryColor,
                    ),
                  ),
                  Text(
                    'ID:021515134',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: primaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text(
                  StringManager.today,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: primaryColor),
                ),
                SizedBox(
                  height: ConfigSize.screenHeight! * .01,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    HistoryContainer(
                      leftText: '0',
                      rightText: StringManager.diamonds,
                    ),
                    Spacer(),
                    HistoryContainer(
                      leftText: '00:00:00',
                      rightText: StringManager.hours,
                    ),
                  ],
                ),
                const Text(
                  StringManager.monthlyData,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: primaryColor),
                ),
                SizedBox(
                  height: ConfigSize.screenHeight! * .02,
                ),
                const HistoryLongContainer(
                    days: '0', hours: '00:00:00', diamonds: '0'),
                const Text(
                  StringManager.allInfo,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: primaryColor),
                ),
                SizedBox(
                  height: ConfigSize.screenHeight! * .02,
                ),
                const HistoryLongContainer(
                    days: '0', hours: '00:00:00', diamonds: '0'),
              ],
            ),
          )
        ],
      ),
    );
  }
}

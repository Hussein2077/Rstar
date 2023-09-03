import 'package:flutter/material.dart';
import 'package:saulefna/core/string_manager.dart';
import 'package:saulefna/presentation/widgets/app_bar.dart';
import 'package:saulefna/presentation/widgets/half_circle.dart';

import '../../core/app_color.dart';
import '../../core/asset_path.dart';
import '../../core/config_size.dart';
import '../../routes.dart';
import '../widgets/massages_column.dart';
import '../widgets/profile_columns.dart';

class LevelScreen extends StatefulWidget {
  const LevelScreen({Key? key}) : super(key: key);

  @override
  State<LevelScreen> createState() => _LevelScreenState();
}

class _LevelScreenState extends State<LevelScreen> {
  @override
  Widget build(BuildContext context) {
    double currentSliderValue = 0;

    return Scaffold(
      body: Stack(
        children: [
          const HalfCircle(),
          const CustomAppBar(
            text: StringManager.level,
            textColor: Colors.white,
            arrowColor: Colors.white,
          ),
          Positioned(
              top: ConfigSize.screenHeight! * .205,
              left:
                  (ConfigSize.screenWidth! - (ConfigSize.screenWidth! * .877)) /
                      2,
              child: Container(
                height: ConfigSize.screenHeight! * .16,
                width: ConfigSize.screenWidth! * .877,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.white),
                  color:AppColor. containerColor,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'EXP 180000 ',
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 17),
                        ),
                        Text(
                          StringManager.need,
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 17),
                        ),
                      ],
                    ),
                    // const Padding(
                    //   padding: EdgeInsets.symmetric(horizontal: 15),
                    //   child: Row(
                    //     children: [
                    //       Text(
                    //         'LV.0',
                    //         style: TextStyle(
                    //             fontWeight: FontWeight.w500, fontSize: 14),
                    //       ),Spacer(),
                    //       Text(
                    //        'LV.1',
                    //         style: TextStyle(
                    //             fontWeight: FontWeight.w500, fontSize: 14),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    StatefulBuilder(builder: (context, _setState) {
                      return SliderTheme(
                        data: const SliderThemeData(
                          trackHeight: 15,
                         ),
                        child: Slider(
                        activeColor: AppColor.resetPasswordColor,
                           inactiveColor:AppColor.sliderSecondColor,
                            value: currentSliderValue,
                            max: 100,
                            divisions: 100,
                            // label: currentSliderValue.round().toString(),
                            onChanged: (value) {
                              _setState(() {
                                currentSliderValue = value;
                              });
                            }),
                      );
                    })
                  ],
                ),
              )),
          Positioned(
              left: 170,
              top: ConfigSize.screenHeight! * .17,
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 30,
                    child: Image.asset(AssetsPath.profileImage),
                  ),
                  const Positioned(
                      top: 45,
                      left: 45,
                      child: CircleAvatar(
                        backgroundColor: Colors.green,
                        radius: 6,
                      ))
                ],
              ))
        ],
      ),
    );
  }
}

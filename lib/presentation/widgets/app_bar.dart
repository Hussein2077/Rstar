import 'package:flutter/material.dart';

import '../../core/app_color.dart';
import '../../core/asset_path.dart';
import '../../core/config_size.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, required this.text, this.textColor=primaryColor, this.arrowColor=primaryColor}) : super(key: key);
  final String text;
final Color? textColor;
  final Color? arrowColor;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: ConfigSize.screenHeight! * .02),
        AppBar(
          // elevation: 0,
          scrolledUnderElevation: 0,

          backgroundColor: Colors.white.withOpacity(0),
          title: Text(
            text,
            style: TextStyle(
              fontSize: ConfigSize.screenHeight! * .028,
              fontWeight: FontWeight.bold,
              color: textColor,
            ),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              icon: Image.asset(
                AssetsPath.arrowBack,
                color: arrowColor,
              ),

              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
          automaticallyImplyLeading: false,
        ),
      ],
    );
  }
}
// Row(
// mainAxisAlignment: MainAxisAlignment.end,
// children: [
// // SizedBox(width:ConfigSize.screenWidth!*.5),
//
// Text(
//
// text,
// style: TextStyle(
// fontSize:ConfigSize.screenHeight!*.028,
// fontWeight: FontWeight.bold,
// color: primaryColor,
// ),
// ),
// SizedBox(width:ConfigSize.screenWidth!*.05),
//
// IconButton(
// icon:Image.asset(AssetsPath.arrowBack,) ,
// color: primaryColor,
// onPressed: () {
// Navigator.pop(context);
// },
// ),
// SizedBox(width: ConfigSize.screenWidth!*.02,),
//
//
// ],
// );

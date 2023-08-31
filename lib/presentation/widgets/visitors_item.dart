import 'package:flutter/material.dart';
import 'package:saulefna/core/app_color.dart';
import 'package:saulefna/core/asset_path.dart';

import '../../core/config_size.dart';
class VisitorsItem extends StatelessWidget {
  const VisitorsItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ConfigSize.screenHeight! * .11,
      width: ConfigSize.screenWidth! * .88,
      decoration: BoxDecoration(
        color: containerColor,
         borderRadius:  BorderRadius.circular(15),
      ),child:  Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(

        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'ناصر احمد ',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,),
              ),  Text(
                'ID:021515134',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: hintColor),
              ),
            ],
          ),
          SizedBox( width: ConfigSize.screenWidth! * .07,),
          Image.asset(AssetsPath.visitorImage)
        ],
    ),
      ),

    );
  }
}

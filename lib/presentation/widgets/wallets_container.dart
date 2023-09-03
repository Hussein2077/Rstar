import 'package:flutter/material.dart';
import 'package:saulefna/core/app_color.dart';
import 'package:saulefna/core/asset_path.dart';

import '../../core/config_size.dart';
class WalletContainer extends StatelessWidget {
  const WalletContainer({Key? key, this.onTap}) : super(key: key);
 final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.white),
          color: AppColor.containerColor,
        ),
        height: ConfigSize.screenHeight! * .15,
        width: ConfigSize.screenWidth! * .412,
child: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Image.asset(AssetsPath.goldIcon),
      Text('800',  style: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 20,
        color: AppColor.goldColor),),
    Text('\$49.99',  style: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 14,
        color: Colors.black),),

  ],
),
      ),
    );
  }
}

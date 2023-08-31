import 'package:flutter/material.dart';
import 'package:saulefna/core/app_color.dart';
import 'package:saulefna/core/asset_path.dart';
import 'package:saulefna/core/string_manager.dart';
import 'package:saulefna/presentation/widgets/app_bar.dart';
import 'package:saulefna/presentation/widgets/wallets_container.dart';
import 'package:saulefna/routes.dart';

import '../../core/config_size.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CustomAppBar(text: StringManager.wallet),
          Container(
            height: ConfigSize.screenHeight! * .22,
            width: ConfigSize.screenWidth! * .877,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.white),
                color: containerColor),
            child: Stack(
              children: [
                const Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    '0',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 64,
                        color: goldColor),
                  ),
                ),
                Positioned(
                    top: ConfigSize.screenHeight! * .064,
                    left: ConfigSize.screenWidth! * .26,
                    child: Image.asset(
                      AssetsPath.walletImage,
                      scale: 1.2,
                    ))
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: GridView.builder(
                  itemCount: 4,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 16,
                  ),
                  itemBuilder: (context, index) {
                    return  WalletContainer(onTap: (){
                      Navigator.pushNamed(context, Routes.paymentScreen);
                    },);
                  }),
            ),
          )
        ],
      ),
    );
  }
}

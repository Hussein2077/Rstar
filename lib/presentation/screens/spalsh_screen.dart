import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:saulefna/core/asset_path.dart';
import 'package:saulefna/core/config_size.dart';

import 'auth/login_screen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {

    Timer(const Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) => const LoginScreen()
            )
        )
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    ConfigSize().init(context);
    return Scaffold(
body: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    // Expanded(child: SizedBox()),
    SizedBox(
      height:ConfigSize.screenHeight!*.26,
    ),
        Center(child: Image.asset(AssetsPath.logoWithName)),

    Expanded(child: SvgPicture.asset(AssetsPath.vector))
  ],
),
    );
  }
}

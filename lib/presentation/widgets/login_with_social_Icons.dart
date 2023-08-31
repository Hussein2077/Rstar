import 'package:flutter/material.dart';

import '../../core/asset_path.dart';

class SocialIcon extends StatelessWidget {
  const SocialIcon({Key? key, required this.assetPath, this.onTap}) : super(key: key);
  final String assetPath;
final  void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Material(
        borderRadius: BorderRadius.circular(100),
        elevation: 10,
        child: CircleAvatar(
          radius: 24,
          backgroundColor: Colors.white,
          child: Image.asset(assetPath),
        ),
      ),
    );
  }
}

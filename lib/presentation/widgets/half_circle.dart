import 'package:flutter/material.dart';
import 'package:saulefna/core/asset_path.dart';

class HalfCircle extends StatelessWidget {
  const HalfCircle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(AssetsPath.halfCircle);
  }
}

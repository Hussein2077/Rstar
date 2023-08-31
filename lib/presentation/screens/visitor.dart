import 'package:flutter/material.dart';
import 'package:saulefna/core/string_manager.dart';
import 'package:saulefna/presentation/widgets/app_bar.dart';
 import 'package:saulefna/presentation/widgets/visitors_item.dart';

import '../../core/asset_path.dart';
import '../../core/config_size.dart';
import '../widgets/half_circle.dart';

class VisitorScreen extends StatelessWidget {
  const VisitorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          Stack(
            children: [
              const Stack(
                children: [
                  HalfCircle(

                  ),
                  CustomAppBar(text: StringManager.visitor,textColor: Colors.white,arrowColor: Colors.white,)
                ],
              ),
          
              Column(
                children: [

                  Padding(
                    padding: const EdgeInsets.only(top: 150),
                    child: SizedBox(
                      height: 600,
                        child: ListView.builder(
itemCount: 20,

                            padding: EdgeInsets.zero,
                            primary: false,
                            itemBuilder: (context, index) {
                          return  const Column(

                            children: [

                              VisitorsItem(),
                              SizedBox(height: 16,)
                            ],
                          );
                        })),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

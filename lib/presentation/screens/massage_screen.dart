import 'package:flutter/material.dart';
 import 'package:saulefna/core/asset_path.dart';
import 'package:saulefna/core/config_size.dart';
import 'package:saulefna/core/string_manager.dart';
 import 'package:saulefna/presentation/widgets/half_circle.dart';
import 'package:saulefna/presentation/widgets/massages_column.dart';

 import '../widgets/massages_list_view.dart';

class MassageScreen extends StatelessWidget {
  const MassageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SizedBox(
        height: double.infinity,
        width: double.infinity,

        child: Column(
          children: [
            SizedBox(
              height: ConfigSize.screenHeight! * .35,

              child: Stack(
                children: [
                Stack(
               children: [
          const HalfCircle(
                   //   child: Center(
                   //   child: Text(
                   //     StringManager.massage,
                   //     style: TextStyle(
                   //       fontWeight: FontWeight.w700,
                   //       color: Colors.white,
                   //       fontSize: ConfigSize.screenHeight! * .023,
                   //     ),
                   //   ),
                   // ),
                 ),   Positioned(
                   top: 90,
                   left: 172,
                   child: Text(
                     StringManager.massage,
                     style: TextStyle(
                       fontWeight: FontWeight.w700,
                       color: Colors.white,
                       fontSize: ConfigSize.screenHeight! * .023,
                     ),
                   ),
                 ),

               ],
                ),
                  Positioned(
                      top: ConfigSize.screenHeight!*.192,
                      left:( ConfigSize.screenWidth!-(ConfigSize.screenWidth!*.877))/2,

                      child: Container(
                    height: ConfigSize.screenHeight!*.145,
                    width: ConfigSize.screenWidth!*.877,
                    decoration:  BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.white),
                      color: const Color(0x4DFFFFFF),
                      // color: Colors.red
                    ),
                        child: Column(
                          children: [
                            SizedBox(height: (ConfigSize.screenHeight!*.145)/5,),
                            const Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                IconsColumn(image: AssetsPath.starMassage, text: StringManager.massage),
                                IconsColumn(image: AssetsPath.followMassage, text: StringManager.follow),
                                IconsColumn(image: AssetsPath.likeMassage, text: StringManager.like),
                                IconsColumn(image: AssetsPath.friends, text: StringManager.friends),
                              ],
                            ),
                          ],
                        ),

                  )),



                ],
              ),
            ),
            const SizedBox(height: 29,),
            Expanded(
              child: ListView.builder(
                  itemCount: 15,
                  padding: EdgeInsets.zero,
                  itemBuilder: (BuildContext context, int index){
                    return Padding(
                      padding:  EdgeInsets.symmetric(vertical: ConfigSize.screenHeight!*.02),
                      child: const ListViewBody(),
                    );

                  }),
            )
          ],
        ),
      ),
    );
  }
}

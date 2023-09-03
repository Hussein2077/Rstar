import 'package:flutter/material.dart';
 import 'package:saulefna/presentation/widgets/half_circle.dart';
import 'package:saulefna/presentation/widgets/profile_columns.dart';
import 'package:saulefna/presentation/widgets/profile_info.dart';
import 'package:saulefna/routes.dart';

import '../../core/app_color.dart';
import '../../core/asset_path.dart';
import '../../core/config_size.dart';
import '../../core/string_manager.dart';
import '../widgets/massages_column.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: ConfigSize.screenHeight! * .35,
              child: SizedBox(
                height: ConfigSize.screenHeight! * .35,
                child: Stack(
                  children: [
                const HalfCircle(),
                    Positioned(
                        top: ConfigSize.screenHeight! * .13,
                        left: (ConfigSize.screenWidth! -
                                (ConfigSize.screenWidth! * .877)) /
                            2,
                        child: Container(
                          height: ConfigSize.screenHeight! * .22,
                          width: ConfigSize.screenWidth! * .877,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.white),
                            color:AppColor. containerColor,
                          ),
                          child:  Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  ProfileColumns(
                                      topText: '0',
                                      bottomText: StringManager.like),

                                  ProfileColumns(
                                      topText: '0',
                                      bottomText: StringManager.followers),
                                  ProfileColumns(
                                      topText: '0',
                                      bottomText: StringManager.follow),
                                  ProfileColumns(
                                    isDividerVisible: false,
                                      topText: 'سهل مهدي',
                                      bottomText: 'ID:021515134'),
                                ],
                              ),
                              // SizedBox(height: 15,),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  IconsColumn(
                                      image: AssetsPath.inviteIcon,
                                      text: StringManager.invite),
                                  IconsColumn(

                                      image: AssetsPath.kingIcon,
                                      text: StringManager.vip),
                                  IconsColumn(
                                    onTap: (){
                                      Navigator.pushNamed(context, Routes.walletScreen);
                                    },
                                      image: AssetsPath.walletIcon,
                                      text: StringManager.wallet),
                                ],
                              ),
                            ],
                          ),
                        )),
                    Positioned(
                        left: 170,
                        bottom: 150,
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
              ),
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 16,
                    ),
                    ProfileInfo(
                      text: StringManager.visitor,
                      icon: Image.asset(AssetsPath.visitor),
                      onTap: (){
                        Navigator.pushNamed(context, Routes.visitorScreen);
                      },
                    ),
                    ProfileInfo(
                      text: StringManager.charge,
                      icon: Image.asset(AssetsPath.charge),
                    ),
                    ProfileInfo(
                      text: StringManager.store,
                      icon: Image.asset(AssetsPath.store),
                    ),
                    ProfileInfo(
                      text: StringManager.lifeHistory,
                      icon: Image.asset(AssetsPath.history),
                      onTap: (){
                  Navigator.pushNamed(context, Routes.historyLife);
                      },
                    ),
                    ProfileInfo(
                      text: StringManager.patch,
                      icon: Image.asset(AssetsPath.patch),
                    ),
                    ProfileInfo(
                      text: StringManager.level,
                      icon: Image.asset(AssetsPath.levels),
                      onTap: (){
                        Navigator.pushNamed(context, Routes.levelScreen);

                      },
                    ),
                    ProfileInfo(
                      text: StringManager.settings,
                      icon: Image.asset(AssetsPath.settings),
                    ),
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}

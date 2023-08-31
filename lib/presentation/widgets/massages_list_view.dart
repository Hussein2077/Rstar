import 'package:flutter/material.dart';
import 'package:saulefna/core/app_color.dart';
import 'package:saulefna/core/asset_path.dart';
import 'package:saulefna/core/config_size.dart';

class ListViewBody extends StatelessWidget {
  const ListViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: ConfigSize.screenWidth! * .05,
          ),
          const Icon(Icons.arrow_back_ios),
          SizedBox(
            width: ConfigSize.screenWidth! * .335,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.red,
                    radius: 7,
                    child: Text('1',textAlign: TextAlign.center,style: TextStyle(
                      fontSize: 10,
                      color: Colors.white
                    ),),
                  ),
                  SizedBox(
                    width: ConfigSize.screenWidth! * .07,
                  ),
                  const Text(
                    'ناصر احمد',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 4,
              ),
              const Text(
                'هلا',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: greyColor),
              )
            ],
          ), SizedBox(
            width: ConfigSize.screenWidth! * .096,
          ),
          CircleAvatar(child: Image.asset(AssetsPath.profilePhoto),)
        ],
      ),
    );
  }
}

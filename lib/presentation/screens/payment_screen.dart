import 'package:flutter/material.dart';
import 'package:saulefna/core/app_color.dart';
import 'package:saulefna/core/asset_path.dart';
import 'package:saulefna/core/string_manager.dart';
import 'package:saulefna/presentation/widgets/app_bar.dart';

import '../../core/config_size.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    int? selectedValue = 1;


    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const CustomAppBar(text: StringManager.charge),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [

               SizedBox(height: ConfigSize.screenHeight!*.03,),
                Center(
                  child: Container(
                    height: ConfigSize.screenHeight! * .1525,
                    width: ConfigSize.screenWidth! * .877,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.white),
                      color: AppColor.paymentContainerColor,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(AssetsPath.paymentLogo),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '199.99 ',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                  color: Colors.green),
                            ),
                            Text('EGP', style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: Colors.black),),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: ConfigSize.screenHeight!*.019,),
                const Text(
                  StringManager.anotherPayment,
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: Colors.black),
                ),
    Container(
      height: ConfigSize.screenHeight! * .4,
      width: ConfigSize.screenWidth! * .877,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.white),
        color:AppColor. paymentContainerColor,
      ),
      child:StatefulBuilder(builder: (context,_setState){
        return  Column(
          children: [
            RadioListTile(
              value: 1,
              groupValue: selectedValue,
              onChanged: (value) {
                _setState(() {
                  selectedValue = value;
                });
              },
              title: Text('Option 1'),
               activeColor: Colors.blue, // Customize the selected color
            ),
            RadioListTile(
              value: 2,
              groupValue: selectedValue,
              onChanged: (value) {
                _setState(() {
                  selectedValue = value;
                });
              },
              title: Text('Option 2'),
              activeColor: Colors.blue, // Customize the selected color
            ),
          ],
        );
      },)
    )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

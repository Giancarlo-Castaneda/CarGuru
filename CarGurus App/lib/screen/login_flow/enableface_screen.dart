import 'package:carguru/screen/login_flow/enablefinger_screen.dart';
import 'package:carguru/utils/App_content.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import '../../utils/Colors.dart';
import '../../utils/Custom_widget.dart';
import '../../utils/Dark_lightmode.dart';
import '../../utils/fontfameli_model.dart';

class Enablefacescreen extends StatefulWidget {
  const Enablefacescreen({super.key});

  @override
  State<Enablefacescreen> createState() => _EnablefacescreenState();
}

class _EnablefacescreenState extends State<Enablefacescreen> {
  late ColorNotifire notifire;
  @override
  Widget build(BuildContext context) {
    notifire = Provider.of<ColorNotifire>(context, listen: true);
    return Scaffold(
      backgroundColor: notifire.getbgcolor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Image.asset(Appcontent.faceid, height: 136,),
            const SizedBox(height: 15,),
            Text('Use Face ID to login?', style: TextStyle(fontSize: 24, fontFamily: 'gilroyBold', fontWeight: FontWeight.w700, color: notifire.getwhiteblackcolor),),
            const SizedBox(height: 10,),
            Text('You can use Face ID to access your\naccount, so you won’t need to type your\npassword each time.', style: TextStyle(fontSize: 16, fontFamily: 'gilroy-medium', fontWeight: FontWeight.w500, color: greyScale),textAlign: TextAlign.center),
            const Spacer(),
            GestButton(
              height: 50,
              Width: Get.size.width,
              margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              buttontext: 'Use Face ID',
              style: const TextStyle(fontFamily: FontFamily.gilroyBold, fontWeight: FontWeight.w700, fontSize: 16, color: Colors.white),
              onclick: () {
                Get.to(const EnablefingerScreen());
              },
              buttoncolor: onbordingBlue,
            ),
            NormalButton(
              height: 50,
              width: Get.size.width,
              margin: const EdgeInsets.symmetric(vertical: 3, horizontal: 20),
              buttonText: "No, Thanks",
              style: TextStyle(
                fontFamily: FontFamily.gilroyBold,
                color: onbordingBlue,
                fontSize: 15,
              ),
              border: Border.all(color: onbordingBlue),
            ),
            const SizedBox(height: 30,),
          ],
        ),
      ),
    );
  }
}

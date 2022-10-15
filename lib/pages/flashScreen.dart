import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myanmar_sar_kyi_tite/LoginSave/loginSave.dart';
import 'package:myanmar_sar_kyi_tite/pages/consider.dart';
import 'package:myanmar_sar_kyi_tite/pages/login.dart';
import 'package:myanmar_sar_kyi_tite/pages/register.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class FlashScreen extends StatefulWidget {
  const FlashScreen({Key? key}) : super(key: key);

  @override
  State<FlashScreen> createState() => _FlashScreenState();
}

class _FlashScreenState extends State<FlashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3)).then((value) => 
    Get.to(Consider()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Image.asset(
                  "assets/images/logo.jpg",
                  width: 200,
                  height: 200,
                ),
              ),
              SizedBox(
                height: 50,
                child: SpinKitFadingCircle(size: 50, color: Colors.greenAccent),
              ),
            ],
          ),
        ));
  }
}

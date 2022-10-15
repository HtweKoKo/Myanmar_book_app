import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:myanmar_sar_kyi_tite/pages/home.dart';

import '../LoginSave/loginSave.dart';
import 'login.dart';
import 'register.dart';

class Consider extends StatefulWidget {
  const Consider({Key? key}) : super(key: key);

  @override
  State<Consider> createState() => _ConsiderState();
}

class _ConsiderState extends State<Consider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder<bool>(
        future: isLogin(),
        builder: ((context, snapshot) {
          if (snapshot.hasData) {
            if (snapshot.data != null && snapshot.data!) {
              return Home();
            } else if (snapshot.data != null && snapshot.data == false) {
              return Register();
            }
          }

          return Text("Something was wrong");
        })),
    );
  }
}
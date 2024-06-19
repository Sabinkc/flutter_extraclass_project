import 'dart:html';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:my_app/project.dart';
import 'package:my_app/screens/dashboard.dart';
import 'package:my_app/screens/profile.dart';

void main(List<String> args) {
  runApp(MyApplication());
}

class MyApplication extends StatelessWidget {
  const MyApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: MobileLikeScrollBehaviour(),
      debugShowCheckedModeBanner: false,
      home: DashBoardScreen(),
    );
  }
}

class MobileLikeScrollBehaviour extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}

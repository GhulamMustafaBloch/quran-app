// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AppBarComp extends StatelessWidget {
  const AppBarComp({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height*0.3,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/login_signup/login.png"), fit: BoxFit.cover)
      ),
    );
  }
}

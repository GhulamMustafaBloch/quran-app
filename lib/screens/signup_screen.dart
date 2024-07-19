// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:quran_app/components/login_comp/app_bar_comp.dart';
import 'package:quran_app/components/signup_cump/signup_body.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                AppBarComp(),
                Positioned(
                  top: 30,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back, 
                      color: Colors.white, 
                      size: 33,
                      ),
                  ),
                )
              ]
            ),
            SizedBox(height: 20),
            SignupBody()
          ]
        )
      ),
    );
  }
}
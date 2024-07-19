// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quran_app/components/login_comp/app_bar_comp.dart';
import 'package:quran_app/components/login_comp/masuk.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
           AppBarComp(),
           Masuk()
          ],
        ),
      ),
    );
  }
}
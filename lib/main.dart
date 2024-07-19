// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quran_app/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme: TextTheme(
          displayLarge: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: Color(0xff333333),
          ),
          displayMedium: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Color(0xff333333),
          ),
          displaySmall: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Color(0xff828282),
          )
        ),
        iconTheme: IconThemeData(
          color: Color(0xffBDBDBD),
        ),
        inputDecorationTheme: InputDecorationTheme(
          suffixIconColor: Color(0xffBDBDBD),
           enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(
                color: Colors.grey,
                width: 3
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(
                color: Color(0xff32B7C5),
                width: 3
              ),
            ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
         style: ElevatedButton.styleFrom(
          minimumSize: Size(size.width, 48),
          backgroundColor: Color(0xff32B7C5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          )
         )
        )
      ),
      home: const LoginScreen(),
    );
  }
}



//  style: ButtonStyle(
//             backgroundColor: MaterialStateProperty.all<Color>(Color(0xff32B7C5)),
//             shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//               RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(10),
//               )
//             )
//           )
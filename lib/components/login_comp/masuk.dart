// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:quran_app/screens/signup_screen.dart';

class Masuk extends StatefulWidget {
  const Masuk({super.key});

  @override
  State<Masuk> createState() => _MasukState();
}

class _MasukState extends State<Masuk> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.topLeft,
      padding: EdgeInsets.all(24),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Masuk",
              style: Theme.of(context).textTheme.displayLarge,
            ),
            SizedBox(height: 15),
            Container(
                width: size.width * 0.65,
                child: Text(
                  "Mulai harimu dengan membaca ayat-ayat suci Al-quran.",
                  style: Theme.of(context).textTheme.displayMedium,
                )
          ),
          SizedBox(height: 15),
         TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            label: Text("E-Mail"),
            labelStyle: Theme.of(context).textTheme.displaySmall,
            suffixIcon: Icon(Icons.email),
            enabledBorder: Theme.of(context).inputDecorationTheme.enabledBorder,
            focusedBorder: Theme.of(context).inputDecorationTheme.focusedBorder,
            )
         ),
         SizedBox(height: 20),
         TextField(
          keyboardType: TextInputType.text,
          obscureText: true,
          decoration: InputDecoration(
            suffixIconColor: Theme.of(context).inputDecorationTheme.suffixIconColor,
            label: Text("Password"),
            labelStyle: Theme.of(context).textTheme.displaySmall,
            suffixIcon: Icon(Icons.remove_red_eye_rounded),
            enabledBorder: Theme.of(context).inputDecorationTheme.enabledBorder,
            focusedBorder: Theme.of(context).inputDecorationTheme.focusedBorder,
            )
         ),
         Container(
          alignment: Alignment.bottomRight,
          child: TextButton(
            onPressed: () {}, 
            child: Text("Lupa Password?", style: TextStyle(
            color: Color(0xff007DFE)
          ),),)
         ),
         SizedBox(
          height: 10,
         ),
         ElevatedButton(onPressed: () {}, child: Text("Masuk", style: TextStyle(
            fontSize: 14,
            color: Colors.white,
            fontWeight: FontWeight.w700
          ),)),
          SizedBox(height: 20,),
          Container(
            alignment: Alignment.center,
            child: Text(
              "atau login melalui",
              style: Theme.of(context).textTheme.displayMedium,
            ),
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/login_signup/google.png"))
                ),
              ),
              SizedBox(width: 50,),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/login_signup/facebook.png"))
                ),
              ),
            ],
          ),
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Belum punya akun? ", ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SignupScreen(),));
                },
                child: Text("Daftar", style: TextStyle(
                  color: Color(0xff007DFE)
                )
                ),
              )
            ]
          ),
          SizedBox(height: 15,),
          Container(
            alignment: Alignment.center,
            child: Text("© 2023 Persis Software Labs, All Rights Reserved.")
          ),
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/Icon/linkedin.png"))
                )
              ),
              SizedBox(width: 15,),
              Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/Icon/face.png"))
                )
              ),
              SizedBox(width: 15,),
              Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/Icon/instagram.png"))
                )
              ),
              SizedBox(width: 15,),
              Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/Icon/twitter.png"))
                )
              ),

            ]
          )
        ]
      ),
    );
  }
}

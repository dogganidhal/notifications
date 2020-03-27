import 'dart:async';

import 'package:flutter/material.dart';
import 'package:notifications/animation/translate_animation.dart';
import 'package:notifications/pages/homepage/ui/homepage.dart';
import 'package:notifications/utils/colors.dart';
import 'package:notifications/utils/const.dart';
import 'package:notifications/utils/sliderout.dart';
import 'package:notifications/utils/translate_animation.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: ColorBook.color,
      //Colors.white,
      body: (Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
                child: TranslateAnimation(
                    2,
                    Image.asset(
                      Const.sadaka,
                      width: 200,
                      height: 200,
                      fit: BoxFit.fill,
                    ))),
            SizedBox(
              height: 10,
            ),
            // Text("هذا التطبيق", style: TextStyle(color: color2,fontSize: 25)),
            //SizedBox(height:300 ,),
            Align( alignment: Alignment.bottomCenter,child:Column(children: <Widget>[
              Text("صدقة جارية", style: TextStyle(color: ColorBook.color2, fontSize: 20)) ,
            SizedBox(
              height: 5,
            ),
            //Align( alignment: Alignment.bottomCenter ,child:
            Text(
              "للشهيد محمد المتحمي محافظ محائل",
              style: TextStyle(color: ColorBook.color2, fontSize: 20),
            ),
          ],
            ),
       
          )
          ]
            )
        )
      )
    );
  }

  startTime() async {
    var _duration = new Duration(seconds: 5);
    return new Timer(_duration, navigationPage);
  }

  navigationPage() {
    Navigator.pushReplacementNamed(context, '/home');

  }

  @override
  void initState() {
    super.initState();
    startTime();
  }
}

import 'dart:async';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:cricscore/Screens/BottomNavScreen/BottomNavScreen.dart';
import 'package:cricscore/Screens/SignInScreen.dart';
import 'package:google_fonts/google_fonts.dart';
/*
Add the packages {AutoSizeText,GoogleFonts} in the pubspec yaml file
*/

class Splash_Screen extends StatefulWidget {
  @override
  _Splash_ScreenState createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.orange,
                Colors.deepOrangeAccent,
                Colors.deepOrange,
              ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    AutoSizeText('CricScore',maxLines: 1,style: TextStyle(fontFamily: 'Potta',color: Colors.white,fontSize: 34),maxFontSize: 44,minFontSize: 22,),
                    Image.asset('assets/images/CricketSplash.gif',height: MediaQuery.of(context).size.width*0.6,width: MediaQuery.of(context).size.width*0.6),
                    Container(
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.05),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: AutoSizeText(
                            'Keep record of your Gully cricket matches Online',
                            maxFontSize: 15,
                            maxLines: 2,
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),
                          ),
                        ),
                    ),
                  ],
                ),
      ),
    );
  }

  void startTimer()
  {
    Timer(
      Duration(seconds: 4),(){
       //add your route here to which the splash scrren navigates to after this time 
    }
    );
  }

}

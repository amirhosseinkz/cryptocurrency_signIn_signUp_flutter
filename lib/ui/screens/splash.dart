import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cryptocurrency_signin_signup/ui/screens/home.dart';
import 'package:splashscreen/splashscreen.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      navigateAfterSeconds: HomeScreen(),
      title: Text('SplashScreen'),
      image: Image.asset("assets/sample/bitcoin2.jpg"),
      backgroundColor: Colors.black,
      photoSize: 200,
      loaderColor: Colors.yellow,
      loadingText:  Text('Cryptocurrency Loading' ,
        style: TextStyle(color: Colors.white
          , fontWeight: FontWeight.bold , fontSize: 20),),
      );
  }
}

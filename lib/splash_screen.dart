import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'home/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    delay();
  }

  // create method to stay on page for few secs
  void delay () async{
    await Future.delayed(Duration(seconds: 2));
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomeScreen(),));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
        body: Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    child: Lottie.asset('assets/animations/splash_animation.json')
                ),
              ],
            )
        )
    )
    );
  }
}

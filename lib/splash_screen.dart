import 'package:flutter/material.dart';
import 'package:vahansewa_app/login/login_screen.dart';
import 'package:vahansewa_app/mainScreenFile.dart';
import 'package:vahansewa_app/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    new Future.delayed(
        const Duration(seconds: 5),
        () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginScreen()),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Image.asset(
        'images/splash.jpg',
        fit: BoxFit.fill,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        alignment: Alignment.center,
      ),
    );
  }
}

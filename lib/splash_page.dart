import 'dart:async';


import 'package:flutter/material.dart';

import 'authenthication/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 2),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const Login())));
  }

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
          // backgroundColor: S,
          body: Padding(
              padding: const EdgeInsets.all(52.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 40),
                    Container(
                      height: 300,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/appbar.png"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Center(
                        child: Text(
                      'Topia Rental',
                      style: TextStyle(
                          letterSpacing: 5,
                          color: Colors.red,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ))
                  ]))),
    );
  }
}

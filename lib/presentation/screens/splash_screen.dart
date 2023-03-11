import 'dart:async';
import 'package:flutter/material.dart';
import 'package:quran_connect/presentation/screens/main_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const MainScreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Quran Connect',
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  color: const Color(0xff672CBC),
                  fontWeight: FontWeight.w500,
                ),
          ),
          SizedBox(height: screenHeight * 0.04),
          const Image(
            image: AssetImage('assets/images/splash_screen_icon.png'),
            width: 260,
          )
        ],
      ),
    ));
  }
}

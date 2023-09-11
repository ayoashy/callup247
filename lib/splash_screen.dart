import 'package:flutter/material.dart';
import 'onboarding_animation_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) => const OnboardingAnimationScreen(),
        ),
      );
    });

    return Scaffold(
      body: Center(
          child: FractionallySizedBox(
        widthFactor: 0.5,
        heightFactor: 0.2,
        child: Image.asset(
          'assets/logo.png',
          fit: BoxFit.contain,
        ),
      )),
    );
  }
}

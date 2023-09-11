import 'package:callup247/onboarding_choice_gradient_container.dart';
import 'package:callup247/home_page.dart';
import 'package:callup247/responsive_text_styles.dart';
import 'package:flutter/material.dart';

class OnboardingChoiceScreen extends StatelessWidget {
  const OnboardingChoiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Use this app as a:',
              style: responsiveTextStyle(context, 28, null, null),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.025),
            const GradientContainer(
              imagePath: 'assets/customer_icon.png',
              text:
                  'find and access a wide range of services, from home repairs to beauty treatments',
              title: 'Customer',
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.025),
            const GradientContainer(
                title: 'Service Provider',
                text:
                    'showcase your skills, connect with local customers, manage your availability, and grow your business',
                imagePath: 'assets/service_provider.png'),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            InkWell(
              splashColor: Colors.greenAccent,
              radius: 50.0,
              onTap: () {
                // Delay navigation by 300 milliseconds (adjust as needed)
                Future.delayed(const Duration(milliseconds: 300), () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (BuildContext context) => const HomePage(),
                    ),
                  );
                });
              },
              child: Row(
                children: [
                  Text(
                    'Or\nExplore as a guest',
                    style:
                        responsiveTextStyle(context, 20, null, FontWeight.w500),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 25),
                    child: Column(
                      children: [
                        Icon(Icons.arrow_forward),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

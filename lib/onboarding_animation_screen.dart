import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'onboarding_choice_screen.dart';
import 'responsive_text_styles.dart';

class OnboardingAnimationScreen extends StatefulWidget {
  const OnboardingAnimationScreen({super.key});

  @override
  State<OnboardingAnimationScreen> createState() =>
      _OnboardingAnimationScreenState();
}

class _OnboardingAnimationScreenState extends State<OnboardingAnimationScreen>
    with TickerProviderStateMixin {
  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          _buildOnboardingPage(
              'assets/wide_services.svg', 'Comprehensive Service Selection', 0),
          _buildOnboardingPage('assets/available.svg',
              'Real-Time Service Provider Availability', 1),
          _buildOnboardingPage('assets/payments.svg',
              'Secure Payment and First-Time Seller Approval', 2),
        ],
        onPageChanged: (int page) {
          setState(() {
            _currentPage = page;
          });
        },
      ),
    );
  }

  Widget _buildOnboardingPage(
      String svgPath, String description, int pageIndex) {
    final isLastPage = pageIndex == 2;

    final circles = List<Widget>.generate(
      3,
      (index) {
        return Container(
          margin: const EdgeInsets.all(16.0),
          width: 12.0,
          height: 12.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: index == pageIndex ? Colors.black : Colors.white,
          ),
        );
      },
    );

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SvgPicture.asset(
          svgPath,
          width: 220,
          height: 220,
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.05),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(description,
              textAlign: TextAlign.center,
              style: responsiveTextStyle(context, 28.0, null, FontWeight.bold)),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.025),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: circles,
        ),
        if (isLastPage)
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: InkWell(
              splashColor: Colors.greenAccent,
              radius: 50.0,
              onTap: () {
                // Delay navigation by 300 milliseconds (adjust as needed)
                Future.delayed(const Duration(milliseconds: 300), () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (BuildContext context) =>
                          const OnboardingChoiceScreen(),
                    ),
                  );
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Done',
                      style: responsiveTextStyle(
                          context, 20.0, null, FontWeight.bold)),
                  const Icon(Icons.arrow_forward)
                ],
              ),
            ),
          ),
      ],
    );
  }
}

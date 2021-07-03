import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../screens/login_screen.dart';
import '../widgets/onboard_page.dart';
import '../core/constants.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);
  static const String routeName = '/onboarding';
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      systemNavigationBarColor: AppConstants.appBarBgColor,
      statusBarColor: AppConstants.appBarBgColor, // status bar color
    ));
    final controller = PageController(initialPage: 0);
    final pageView = PageView(
      controller: controller,
      scrollDirection: Axis.horizontal,
      children: [
        OnboardPage(
          onboardingIconUrl: 'assets/icons/onboard_icon_1.svg',
          title: 'Confirm Your Device',
          description: 'Huge delivery network. Helps you find '
              ' comforable, safe and cheap ride.',
          buttonName: 'Next',
          controller: controller,
          page: 1,
        ),
        OnboardPage(
          onboardingIconUrl: 'assets/icons/onboard_icon_2.svg',
          title: 'Request Ride',
          description: 'Huge delivery network. Helps you find'
              'comforable, safe and cheap ride.',
          buttonName: 'Next',
          controller: controller,
          page: 2,
        ),
        OnboardPage(
          onboardingIconUrl: 'assets/icons/onboard_icon_3.svg',
          title: 'Track your ride',
          description: 'Huge delivery network. Helps you find'
              'comforable, safe and cheap ride.',
          buttonName: 'Let\'s Start',
          controller: controller,
          page: 3,
        ),
      ],
    );
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      systemNavigationBarColor: AppConstants.appBarBgColor,
    ));
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context)
                    .pushReplacementNamed(LoginScreen.routeName);
              },
              child: const Text('Skip'),
            )
          ],
        ),
        body: Stack(
          children: [
            pageView,
            Positioned(
              bottom: 30,
              left: MediaQuery.of(context).size.width * 0.38,
              child: SmoothPageIndicator(
                controller: controller,
                count: 3,
                effect: const ExpandingDotsEffect(
                    expansionFactor: 4, dotColor: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}

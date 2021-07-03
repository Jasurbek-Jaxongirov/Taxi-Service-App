import 'package:flutter/material.dart';
import '../screens/login_screen.dart';
import '../core/constants.dart';
import 'package:flutter_svg/svg.dart';

class OnboardPage extends StatelessWidget {
  final String onboardingIconUrl;
  final String title;
  final String description;
  final String buttonName;
  final PageController controller;
  final int page;
  const OnboardPage({
    Key? key,
    required this.onboardingIconUrl,
    required this.title,
    required this.description,
    required this.buttonName,
    required this.controller,
    required this.page,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Expanded(
            child: SvgPicture.asset(onboardingIconUrl),
          ),
          buildBottomBar(context),
        ],
      ),
    );
  }

  Widget buildBottomBar(BuildContext context) => Container(
        height: 259,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: AppConstants.bgColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 28.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                description,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Color(0Xff7177AB),
                  fontSize: 17.0,
                ),
              ),
              MaterialButton(
                onPressed: () {
                  page == 3
                      ? Navigator.of(context)
                          .pushReplacementNamed(LoginScreen.routeName)
                      : controller.animateToPage(
                          page,
                          duration: const Duration(seconds: 1),
                          curve: Curves.linear,
                        );
                },
                child: Text(buttonName),
                textColor: AppConstants.bgColor,
                color: Colors.white,
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              ),
              const SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      );
}

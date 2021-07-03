import 'package:flutter/material.dart';
import '../screens/invite_friend_screen.dart';
import '../screens/menu_screen.dart';
import './theme.dart';
import '../screens/search_screen.dart';
import '../screens/signup_screen.dart';
import '../screens/login_screen.dart';

import '../screens/onboarding_screen.dart';
import '../screens/splash_screen.dart';

void main() => runApp(TaxiServiceApp());

// ignore: use_key_in_widget_constructors
class TaxiServiceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: TaxiServiceAppTheme.darkTheme(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        OnboardingScreen.routeName: (context) => const OnboardingScreen(),
        LoginScreen.routeName: (context) => const LoginScreen(),
        SignUp.routeName: (context) => const SignUp(),
        SearchScreen.routeName: (context) => const SearchScreen(),
        MenuScreen.routeName: (context) => const MenuScreen(),
        InviteFriendScreen.routeName: (context) => const InviteFriendScreen(),
      },
    );
  }
}

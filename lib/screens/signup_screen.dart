import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../components/create_account_textfield_area.dart';
import '../screens/login_screen.dart';
import '../core/constants.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);
  static const String routeName = '/sign-up';
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.bottom -
        MediaQuery.of(context).padding.top;
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      systemNavigationBarColor: AppConstants.appBarBgColor,
      statusBarColor: AppConstants.appBarBgColor, // status bar color
    ));
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            color: AppConstants.bgColor,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: double.infinity,
                  height: mediaQuery * 0.12,
                  decoration: const BoxDecoration(
                    color: AppConstants.appBarBgColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                ),
                CreateAccountTextfieldArea(mediaQuery: mediaQuery),
                Container(
                  height: mediaQuery * 0.15,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'ALREADY HAVE AN ACCOUNT?',
                        style: TextStyle(
                          color: AppConstants.bgColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 0),
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                          ),
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacementNamed(LoginScreen.routeName);
                          },
                          child: const Text(
                            'SIGN IN',
                            style: TextStyle(
                              color: AppConstants.bgColor,
                              fontSize: 17.0,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

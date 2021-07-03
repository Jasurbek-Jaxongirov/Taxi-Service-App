import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../screens/search_screen.dart';
import '../core/constants.dart';
import '../components/login_bottom_sheet.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static const String routeName = '/login';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _showPassword = false;
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
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
                  height: mediaQuery.size.height * 0.12,
                  decoration: const BoxDecoration(
                    color: AppConstants.appBarBgColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                ),
                Container(
                  height: mediaQuery.size.height * 0.43,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Let\'s Get Started',
                        style: TextStyle(
                          fontSize: 28.0,
                          color: Colors.white,
                        ),
                      ),
                      const Text(
                        'NAME',
                        style: TextStyle(
                          fontSize: 17.0,
                          color: Colors.white,
                        ),
                      ),
                      TextField(
                        style: Theme.of(context).textTheme.bodyText1,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                          hintText: 'Tushar Chowdhury',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 17.0,
                          ),
                        ),
                      ),
                      const Text(
                        'PASSWORD',
                        style: TextStyle(
                          fontSize: 17.0,
                          color: Colors.white,
                        ),
                      ),
                      TextField(
                        style: Theme.of(context).textTheme.bodyText1,
                        obscureText: !_showPassword,
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                          hintText: '********',
                          hintStyle: const TextStyle(
                            color: Colors.grey,
                            fontSize: 17.0,
                          ),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _showPassword = !_showPassword;
                              });
                            },
                            icon: _showPassword
                                ? const Icon(Icons.visibility)
                                : const Icon(Icons.visibility_off),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                          ),
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacementNamed(SearchScreen.routeName);
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
                    ],
                  ),
                ),
                SizedBox(
                  height: mediaQuery.size.height * 0.35,
                  child: const LoginBottomSheet(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

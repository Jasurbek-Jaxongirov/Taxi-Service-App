import 'package:flutter/material.dart';
import '../core/constants.dart';
import '../screens/signup_screen.dart';

class LoginBottomSheet extends StatelessWidget {
  const LoginBottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10),
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
          const Text(
            'CREATE AN ACCOUNT?',
            style: TextStyle(
              color: AppConstants.bgColor,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
              ),
              onPressed: () {
                Navigator.of(context).pushReplacementNamed(SignUp.routeName);
              },
              child: const Text(
                'SIGN UP',
                style: TextStyle(
                  color: AppConstants.bgColor,
                  fontSize: 17.0,
                ),
              ),
            ),
          ),
          const Text(
            'OR',
            style: TextStyle(
              color: AppConstants.bgColor,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          const CustomSigninButton(
            backgroundColor: Color(0Xff536396),
            btnText: 'Sing Up with facebook',
            logoLetter: 'f',
          ),
          const CustomSigninButton(
            backgroundColor: Color(0XffF47070),
            btnText: 'Sing Up With Google',
            logoLetter: 'G',
          ),
          // Container(
          //   padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
          //   width: double.infinity,
          //   child: ElevatedButton(
          //     style: ButtonStyle(
          //       backgroundColor: MaterialStateProperty.all(Colors.white),
          //     ),
          //     onPressed: () {},
          //     child: const Text(
          //       'Sign Up With Google',
          //       style: TextStyle(
          //         color: AppConstants.bgColor,
          //         fontSize: 17.0,
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}

class CustomSigninButton extends StatelessWidget {
  final String logoLetter;
  final String btnText;
  final Color backgroundColor;
  const CustomSigninButton({
    Key? key,
    required this.logoLetter,
    required this.btnText,
    required this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(backgroundColor),
        ),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              logoLetter,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Container(
              width: 2,
              height: 14,
              color: Colors.grey,
            ),
            Text(
              btnText,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
      ),
    );
  }
}

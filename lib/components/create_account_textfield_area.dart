import 'package:flutter/material.dart';
import '../core/constants.dart';
import '../screens/search_screen.dart';

class CreateAccountTextfieldArea extends StatelessWidget {
  const CreateAccountTextfieldArea({
    Key? key,
    required this.mediaQuery,
  }) : super(key: key);

  final double mediaQuery;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: mediaQuery * 0.73,
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Create An Account',
            style: TextStyle(
              fontSize: 28.0,
              color: Colors.white,
            ),
          ),
          buildText('NAME'),
          buildTextField(context, 'Tushar Chowdhury'),
          buildText('EMAIL ADDRESS'),
          buildTextField(context, 'tusharch911@gmail.com'),
          buildText('PASSWORD'),
          const PasswordField(),
          buildText('CONFIRM PASSWORD'),
          const PasswordField(),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
              ),
              onPressed: () {
                Navigator.of(context)
                    .pushReplacementNamed(SearchScreen.routeName);
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
        ],
      ),
    );
  }

  TextField buildTextField(BuildContext context, String hintText) {
    return TextField(
      style: Theme.of(context).textTheme.bodyText1,
      decoration: InputDecoration(
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Colors.grey,
          fontSize: 17.0,
        ),
      ),
    );
  }

  Widget buildText(String text) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 17.0,
        color: Colors.white,
      ),
    );
  }
}

class PasswordField extends StatefulWidget {
  const PasswordField({
    Key? key,
  }) : super(key: key);

  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  var _showPassword = false;
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: Theme.of(context).textTheme.bodyText1,
      obscureText: !_showPassword,
      decoration: InputDecoration(
        hintText: '********',
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
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
                : const Icon(Icons.visibility_off)),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class UserMenuItem extends StatelessWidget {
  const UserMenuItem(
      {Key? key,
      required this.menuIcon,
      required this.title,
      required this.navigateTo})
      : super(key: key);
  final IconData menuIcon;
  final String title;
  final Function navigateTo;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      child: ListTile(
        leading: Icon(
          menuIcon,
          color: Colors.white,
        ),
        title: Text(
          title,
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
    );
  }
}

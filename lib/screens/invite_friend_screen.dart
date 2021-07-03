import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../core/constants.dart';

class InviteFriendScreen extends StatefulWidget {
  const InviteFriendScreen({Key? key}) : super(key: key);
  static const String routeName = '/invite-friend';

  @override
  _InviteFriendScreenState createState() => _InviteFriendScreenState();
}

class _InviteFriendScreenState extends State<InviteFriendScreen> {
  var isInvited = false;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: AppConstants.bgColor,
      systemNavigationBarColor: AppConstants.bgColor,
    ));
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Invite Friends',
          style: Theme.of(context).textTheme.bodyText2,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
          )
        ],
        backgroundColor: AppConstants.bgColor,
      ),
    );
  }
}

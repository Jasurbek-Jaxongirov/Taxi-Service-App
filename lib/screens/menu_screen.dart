import 'package:flutter/material.dart';
import '../screens/search_screen.dart';
import '../data/data.dart';
import '../core/constants.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);
  static const String routeName = '/menu';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: AppConstants.bgColor,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushReplacementNamed(SearchScreen.routeName);
                      },
                      icon: const Icon(
                        Icons.close,
                        size: 36,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const CircleAvatar(
                  radius: 48,
                  backgroundImage: AssetImage('assets/images/user_image.jpg'),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text('Marius Ciocirlan',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                    )),
                const Text(
                  'Marius974@gmail.com',
                  style: TextStyle(
                    color: Color(0Xff7177AB),
                    fontSize: 17,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: AppData.appData.length,
                    itemBuilder: (context, index) {
                      return AppData.appData[index];
                    },
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

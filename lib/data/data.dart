import 'package:flutter/material.dart';
import '../widgets/user_menu_item.dart';

class AppData {
  static List<Widget> appData = [
    UserMenuItem(
        menuIcon: Icons.home_rounded, title: 'Home', navigateTo: () {}),
    UserMenuItem(
        menuIcon: Icons.payment_sharp,
        title: 'Payment method',
        navigateTo: () {}),
    UserMenuItem(menuIcon: Icons.history, title: 'History', navigateTo: () {}),
    UserMenuItem(
        menuIcon: Icons.add_box_rounded,
        title: 'Apply Promo Code',
        navigateTo: () {}),
    UserMenuItem(
        menuIcon: Icons.inventory_2_outlined,
        title: 'Invite Friends',
        navigateTo: () {}),
    UserMenuItem(menuIcon: Icons.settings, title: 'Setting', navigateTo: () {}),
    UserMenuItem(
        menuIcon: Icons.info, title: 'Online Support', navigateTo: () {}),
    UserMenuItem(menuIcon: Icons.logout, title: 'Log Out', navigateTo: () {}),
  ];
}

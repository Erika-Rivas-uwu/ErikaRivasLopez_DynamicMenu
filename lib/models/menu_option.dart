import 'package:flutter/material.dart' show IconData, Widget;

class MenuOption {
  final String route;
  // ignore: prefer_typing_uninitialized_variables
  final icon;
  final String name;
  final Widget screen;

  MenuOption(
      {required this.route,
      required this.icon,
      required this.name,
      required this.screen});
}

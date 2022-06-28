import 'package:flutter/material.dart';

class RouteOneScreen extends StatelessWidget {
  const RouteOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Route One Screen")),
      body: const Center(
        child: Text('RouteOneScreen'),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_3/router/app_routes.dart';
import 'package:flutter_application_3/screens/alert_screen.dart';
import 'package:flutter_application_3/screens/animation_screen.dart';
import 'package:flutter_application_3/screens/home_sceen.dart';
import 'package:flutter_application_3/screens/listview_screen.dart';
import 'package:flutter_application_3/screens/listview_screen_2.dart';
import 'package:flutter_application_3/screens/routeone_screen.dart';
import 'package:flutter_application_3/screens/routetwo_screen.dart';
import 'package:flutter_application_3/themes/app_themes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static const Color primary = Color.fromARGB(255, 202, 179, 255);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'MaterialApp',
        initialRoute: AppRoutes.initialRoute,
        routes: AppRoutes.getAppRoutes(),
        onGenerateRoute: AppRoutes.onGeneratedRoute,
        theme: AppThemes.amberLightTheme);
  }
}

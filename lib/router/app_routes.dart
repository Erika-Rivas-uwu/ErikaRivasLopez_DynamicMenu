import 'package:flutter/material.dart';
import 'package:flutter_application_3/models/models.dart';
import 'package:flutter_application_3/screens/card_screen.dart';
import 'package:flutter_application_3/screens/screens.dart';
import 'package:flutter_application_3/models/menu_option.dart';

class AppRoutes {
  static const initialRoute = "home";

  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'alert',
        icon: Icons.abc_rounded,
        name: "Alert Screen",
        screen: const AlertScreen()),
    MenuOption(
        route: 'animation',
        icon: Icons.accessible_forward_outlined,
        name: "Animation Screen",
        screen: AnimationScreen()),
    MenuOption(
        route: 'listview',
        icon: Icons.account_box_rounded,
        name: "List View Screen",
        screen: ListViewScreen()),
    MenuOption(
        route: 'routeone',
        icon: Icons.add_call,
        name: "Route One Screen",
        screen: RouteOneScreen()),
    MenuOption(
        route: 'routetwo',
        icon: Icons.airline_seat_individual_suite,
        name: "Route Two Screen",
        screen: RouteTwoScreen()),
    MenuOption(
        route: "listview2",
        icon: Icons.alt_route_sharp,
        name: "List View Screen 2",
        screen: ListView2Screen()),
        MenuOption(
        route: "card",
        icon: Icons.agriculture_outlined,
        name: "Card",
        screen: CardScreen())
  ];

//Map pasa key: valor map para recorrer elemento por elemento
  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    //a method that belongs to this class AppRoutes
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    appRoutes.addAll({'home': (BuildContext context) => HomeScreen()});
    //Loop the menuOption structure
    for (final option in menuOptions) {
      appRoutes.addAll({
        //Esto es dinamico, porque toma los datos del array
        option.route: (BuildContext context) => option.screen
      });
    }

    return appRoutes;
  }

  static Route<dynamic> onGeneratedRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}

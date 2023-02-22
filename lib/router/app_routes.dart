import 'package:flutter/material.dart';
import 'package:flutter_components/models/menu_option.dart';
import 'package:flutter_components/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';
  static final menuOptions = <MenuOption>[
    const MenuOption(
      icon: Icons.home,
      name: 'Home',
      route: 'home',
      screen: HomeScreen(),
    ),
    const MenuOption(
      icon: Icons.card_giftcard,
      name: 'Card',
      route: 'card',
      screen: CardScreen(),
    ),
    const MenuOption(
      icon: Icons.list,
      name: 'ListView 1',
      route: 'listview1',
      screen: ListView1Screen(),
    ),
    const MenuOption(
      icon: Icons.list,
      name: 'ListView 2',
      route: 'listview2',
      screen: ListView2Screen(),
    ),
    const MenuOption(
      icon: Icons.warning,
      name: 'Alert',
      route: 'alert',
      screen: AlertScreen(),
    )
  ];
  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    final Map<String, Widget Function(BuildContext)> appRoutes = {};
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
      // appRoutes[option.route] = (BuildContext context) => option.screen;
    }
    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}

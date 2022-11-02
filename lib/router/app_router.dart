import 'package:flutter/material.dart';

class AppRouter {
  static GlobalKey<NavigatorState> navgiationKey = GlobalKey<NavigatorState>();
  static goToWidget(Widget screen, {arguments}) {
    navgiationKey.currentState!
        .push(MaterialPageRoute(builder: (notNeededContext) {
      return screen;
    }));
  }

  static goToScreen(String routeNamed, {arguments}) {
    navgiationKey.currentState!.pushNamed(routeNamed, arguments: arguments);
  }

  static goToScreenAndReplace(String routeNamed) {
    navgiationKey.currentState!.pushReplacementNamed(routeNamed);
  }
}

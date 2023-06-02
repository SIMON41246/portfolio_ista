import 'package:flutter/material.dart';
import 'package:live_project/about_page.dart';
import 'package:live_project/contact_page.dart';
import 'package:live_project/landing_page.dart';
import 'package:live_project/work_page.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case LandingPage.PAGE:
        return MaterialPageRoute(builder: (_) => const LandingPage());
      case "/contact":
        return MaterialPageRoute(builder: (_) => ContactPage());
      case "/works":
        return MaterialPageRoute(builder: (_) => Works());
      case "/about":
        return MaterialPageRoute(builder: (_) => AboutPage());
      default:
        return MaterialPageRoute(
            builder: (_) => const Scaffold(
                  body: Center(child: Text("Page Introvable")),
                ));
    }
  }
}

import 'package:bloc_clean_coding/views/error/error.dart';
import 'package:bloc_clean_coding/views/home/Home.dart';
import 'package:bloc_clean_coding/views/loading/loading_screen.dart';
import 'package:bloc_clean_coding/views/login/login.dart';
import 'package:bloc_clean_coding/views/splash/splash.dart';
import 'package:flutter/material.dart';
import 'package:bloc_clean_coding/config/routes/routs_name.dart';

class Routs {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case RoutsName.HomeScreen:
        {
          return MaterialPageRoute(builder: (context) => Home());
        }
      case RoutsName.LoginScreen:
        {
          return MaterialPageRoute(builder: (context) => LoginView());
        }
      case RoutsName.SplashScreen:
        {
          return MaterialPageRoute(builder: (context) => SplashView());
        }
      case RoutsName.LoadingScreen:
        {
          return MaterialPageRoute(builder: (context) => LoadingScreen());
        }
      default:
        {
          return MaterialPageRoute(builder: (context) => ErrorScreen());
        }
    }
  }
}

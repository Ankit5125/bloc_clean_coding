import 'package:bloc_clean_coding/config/routes/routs.dart';
import 'package:bloc_clean_coding/config/routes/routs_name.dart';
import 'package:bloc_clean_coding/views/splash/splash.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() => runApp(
  // DevicePreview(
  //   builder: (context) => MyApp(), // Wrap your app
  // ),
  MyApp(),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData(brightness: Brightness.dark),
      initialRoute: RoutsName.SplashScreen,
      onGenerateRoute: Routs.generateRoutes,
      home: const SplashView(),
    );
  }
}

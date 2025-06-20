import 'package:bloc_clean_coding/components/RoundedButton/RoundedButton.dart';
import 'package:bloc_clean_coding/config/routes/routs_name.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // TextButton(
            //   onPressed: () {
            //     Navigator.pushNamed(context, RoutsName.HomeScreen);
            //   },
            //   child: Text("GOTO HOME"),
            // ),
            RoundedButton(
              onPress: () {
                Navigator.pushNamed(context, RoutsName.HomeScreen);
              },
              text: "GOTO HOME",
              height: 60,
              borderRadius: 10,
            ),
            // TextButton(
            //   onPressed: () {
            //     Navigator.pushNamed(context, RoutsName.LoadingScreen);
            //   },
            //   child: Text("GOTO Loading"),
            // ),
            SizedBox(height: 20),
            RoundedButton(
              onPress: () {
                Navigator.pushNamed(context, RoutsName.LoadingScreen);
              },
              text: "GOTO Loading Screen",
              height: 60,
              borderRadius: 10,
            ),
          ],
        ),
      ),
    );
  }
}

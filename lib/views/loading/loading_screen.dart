import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  Widget build(BuildContext context) {
    return Platform.isAndroid
        ? Center(child: CircularProgressIndicator(color: Colors.white))
        : Center(child: CupertinoActivityIndicator(color: Colors.white));
  }
}

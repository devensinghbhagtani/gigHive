import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gighive/Config/theme.dart';
import 'package:gighive/Pages/freelancers.dart';
import 'package:gighive/Pages/homepage.dart';
import 'package:gighive/Pages/intropages.dart';
import 'package:gighive/navigation.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      showSemanticsDebugger: false,
      title: 'Muzic Player',
      theme: lightTheme,
      home: IntroPages(),
      // home: const FreelancersPage(),
    );
  }
}

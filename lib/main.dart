import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gighive/Config/theme.dart';
import 'package:gighive/Pages/homepage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      showSemanticsDebugger: false,
      title: 'Muzic Player',
      theme: lightTheme,
      home: const HomePage(),
      // home: const DemoPage(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:myfirst_project_flutter3/page/day15.dart';
import 'package:myfirst_project_flutter3/page/playstore/main_pages.dart';
import 'package:myfirst_project_flutter3/page/playstore/onboarding_page_19.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'appbar_1.dart';
import 'home_work_1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    readData();
    super.initState();
  }

  bool? isLogin = false;

  void readData() async {
    var pref = await SharedPreferences.getInstance();
    setState(() {
      isLogin = pref.getBool("login");
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: isLogin == false || isLogin == null
          ? const OnboardingPage19()
          : const MainPages(),
    );
  }
}

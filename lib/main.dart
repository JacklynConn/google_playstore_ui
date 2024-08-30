import 'package:flutter/material.dart';
import 'package:myfirst_project_flutter3/page/main_pages.dart';
import 'package:myfirst_project_flutter3/page/onboarding_page_19.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
    // TODO: implement initState
    readData();
    super.initState();
  }
  bool ? isLogin = false;
  void readData() async{
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
      theme: ThemeData(
        // appBarTheme: const AppBarTheme(backgroundColor: Colors.blue),
        // useMaterial3: true,
      ),
      home: isLogin == false || isLogin == null ? const OnboardingPage19() : const MainPages(),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:myfirst_project_flutter3/appbar_1.dart';
import 'package:myfirst_project_flutter3/home_work_1.dart';

import 'build_Listview_18.dart';
import 'build_pageview_19.dart';
import 'build_tabbar_16.dart';
import 'day15.dart';

class OtherScreen extends StatefulWidget {
  const OtherScreen({super.key});

  @override
  State<OtherScreen> createState() => _OtherScreenState();
}

class _OtherScreenState extends State<OtherScreen> {
  List otherScreen = [
    const HomeWork1(),
    const AppBar1(),
    const Day15(),
    const BuildTapBar16(),
    const BuildListView18(),
    const BuildPageView19(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: otherScreen.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => otherScreen[index],
                ),
              );
            },
            child: Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  "Screen ${index + 1}",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';

class BuildPageView19 extends StatefulWidget {
  const BuildPageView19({super.key});

  @override
  State<BuildPageView19> createState() => _BuildPageView19State();
}

class _BuildPageView19State extends State<BuildPageView19> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            alignment: Alignment.center,
            color: Colors.red,
            child: const Text(
              "Page 1",
              style: TextStyle(fontSize: 72),
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.yellow,
            child: const Text(
              "Page 2",
              style: TextStyle(fontSize: 72),
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.green,
            child: const Text(
              "Page 3",
              style: TextStyle(fontSize: 72),
            ),
          ),
        ],
      ),
    );
  }
}

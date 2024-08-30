import 'package:flutter/material.dart';

class BuildTapBar16 extends StatefulWidget {
  const BuildTapBar16({super.key});

  @override
  State<BuildTapBar16> createState() => _BuildTapBar16State();
}

class _BuildTapBar16State extends State<BuildTapBar16> {
  List<Widget> screens = [
    const Center(child: Text("Home"),),
    const Center(child: Text("Notification"),),
    const Center(child: Text("Setting"),),
  ];

  int currentIndex = 0;
  void selectedIndex(int index){
    setState(() {
        currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Tab Bar"),
        ),
        body: screens.elementAt(currentIndex),
        // body: const Column(
        //   children: [
        //     TabBar(
        //       labelColor: Colors.black,
        //       indicatorSize: TabBarIndicatorSize.label,
        //       isScrollable: true,
        //       indicatorWeight: 4,
        //       tabs: [
        //         Tab(
        //           icon: Icon(Icons.home),
        //           text: "Home",
        //         ),
        //         Tab(
        //           icon: Icon(Icons.settings),
        //           text: "Setting",
        //         )
        //       ],
        //     ),
        //     Expanded(
        //       child: TabBarView(
        //         children: [
        //           Center(
        //             child: Text(
        //               "Home",
        //               style: TextStyle(fontSize: 28),
        //             ),
        //           ),
        //           Center(
        //             child: Text(
        //               "Setting",
        //               style: TextStyle(fontSize: 28),
        //             ),
        //           ),
        //         ],
        //       ),
        //     )
        //   ],
        // ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index){
            selectedIndex(index);
          },
          items: const [
            BottomNavigationBarItem(
              backgroundColor: Colors.blue,
              label: "Home",
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: "Notification",
              icon: Icon(Icons.notifications),
            ),
            BottomNavigationBarItem(
              label: "Setting",
              icon: Icon(Icons.settings),
            ),
          ],
        ),
      ),
    );
  }
}

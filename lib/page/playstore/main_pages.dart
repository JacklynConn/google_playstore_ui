import 'package:flutter/material.dart';
import 'package:myfirst_project_flutter3/page/layout_apps.dart';

import 'clone_playstore.dart';

class MainPages extends StatefulWidget {
  const MainPages({super.key});

  @override
  State<MainPages> createState() => _MainPagesState();
}

class _MainPagesState extends State<MainPages> {
  int index = 0;
  Widget _page_selected = const ClonePlayStore();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          elevation: 0,
          title: Container(
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.blue[50],
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  Text(
                    "Search apps...",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                    ),
                  ),
                  Icon(
                    Icons.mic_none_rounded,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ),
          actions: [
            const Icon(
              Icons.notifications_outlined,
              color: Colors.black,
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              margin: const EdgeInsets.only(right: 10),
              alignment: Alignment.center,
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                color: Colors.green[800],
                shape: BoxShape.circle,
              ),
              child: const Text(
                "M",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
          bottom: const TabBar(
            mouseCursor: MouseCursor.uncontrolled,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorPadding: EdgeInsets.only(right: 4, left: 4),
            isScrollable: true,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black,
            dividerColor: Colors.transparent,
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                text: "For You",
              ),
              Tab(
                text: "Top Charts",
              ),
              Tab(
                text: "Kids",
              ),
              Tab(
                text: "Premium",
              ),
              Tab(
                text: "Categories",
              ),
            ],
          ),
        ),
        // drawer: const Drawer(),
        body: _page_selected,
        bottomNavigationBar: NavigationBarTheme(
          data: NavigationBarThemeData(
            indicatorColor: Colors.blue.shade200,
            labelTextStyle: MaterialStateProperty.all(
              const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          child: NavigationBar(
            // height: 60,
            selectedIndex: index,
            onDestinationSelected: (valueIndex) {
              setState(() {
                index = valueIndex;
                if (index == 0) {
                  _page_selected = const ClonePlayStore();
                } else {
                  _page_selected = const LayoutApps();
                }
              });
            },
            destinations: const [
              NavigationDestination(
                  icon: Icon(Icons.sports_esports_outlined), label: "Games"),
              NavigationDestination(
                  icon: Icon(Icons.grid_view_rounded), label: "Apps"),
            ],
          ),
        ),
      ),
    );
  }
}

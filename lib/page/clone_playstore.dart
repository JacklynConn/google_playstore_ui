import 'package:flutter/material.dart';
import 'custom_gaming.dart';

class ClonePlayStore extends StatefulWidget {
  const ClonePlayStore({super.key});

  @override
  State<ClonePlayStore> createState() => _ClonePlayStoreState();
}

class _ClonePlayStoreState extends State<ClonePlayStore> {
  int index = 0;
  final screens = [
    const Center(child: Text('Games', style: TextStyle(fontSize: 72))),
    const Center(child: Text('Apps', style: TextStyle(fontSize: 72))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      body: ListView(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        children: const [
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 15, left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Suggested for You",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Icon(Icons.more_vert),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CustomApps(
                        gamesName: "SK Legends 2",
                        rolePlay: "Role Play",
                        size: 90,
                        image:
                            "https://sklegend.net/public/static/uploads/bg970home.jpg",
                        logo:
                            "https://i.ytimg.com/vi/uYYWeyEde6k/maxresdefault.jpg",
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      CustomApps(
                        gamesName: "hungry shark",
                        rolePlay: "Action",
                        size: 136,
                        image:
                            "https://th.bing.com/th/id/R.f0e59b7e13d2b83b4254bab42063a782?rik=vB%2bu3ZS9sB5PRA&riu=http%3a%2f%2fcdn02.nintendo-europe.com%2fmedia%2fimages%2f10_share_images%2fgames_15%2fnintendo_switch_download_software_1%2fH2x1_NSwitchDS_HungrySharkWorld_image1600w.jpg&ehk=fxiyU4%2bpzys6XZHN3RJ4gJqJiqBTi9F6mSahufenkB8%3d&risl=&pid=ImgRaw&r=0",
                        logo:
                            "https://i.ytimg.com/vi/mqzECudOkxw/maxresdefault.jpg",
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      CustomApps(
                        gamesName: "SK Legends 2",
                        rolePlay: "Role Play",
                        size: 90,
                        image:
                            "https://sklegend.net/public/static/uploads/bg970home.jpg",
                        logo:
                            "https://i.ytimg.com/vi/uYYWeyEde6k/maxresdefault.jpg",
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      CustomApps(
                        gamesName: "SK Legends 2",
                        rolePlay: "Role Play",
                        size: 90,
                        image:
                            "https://sklegend.net/public/static/uploads/bg970home.jpg",
                        logo:
                            "https://i.ytimg.com/vi/uYYWeyEde6k/maxresdefault.jpg",
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15, left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Recommended for you",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Icon(Icons.arrow_forward),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CustomApps(
                        gamesName: "SK Legends 2",
                        rolePlay: "Role Play",
                        size: 90,
                        image:
                            "https://sklegend.net/public/static/uploads/bg970home.jpg",
                        logo:
                            "https://i.ytimg.com/vi/uYYWeyEde6k/maxresdefault.jpg",
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      CustomApps(
                        gamesName: "SK Legends 2",
                        rolePlay: "Role Play",
                        size: 90,
                        image:
                            "https://sklegend.net/public/static/uploads/bg970home.jpg",
                        logo:
                            "https://i.ytimg.com/vi/uYYWeyEde6k/maxresdefault.jpg",
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      CustomApps(
                        gamesName: "SK Legends 2",
                        rolePlay: "Role Play",
                        size: 90,
                        image:
                            "https://sklegend.net/public/static/uploads/bg970home.jpg",
                        logo:
                            "https://i.ytimg.com/vi/uYYWeyEde6k/maxresdefault.jpg",
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      CustomApps(
                        gamesName: "SK Legends 2",
                        rolePlay: "Role Play",
                        size: 90,
                        image:
                            "https://sklegend.net/public/static/uploads/bg970home.jpg",
                        logo:
                            "https://i.ytimg.com/vi/uYYWeyEde6k/maxresdefault.jpg",
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      CustomApps(
                        gamesName: "SK Legends 2",
                        rolePlay: "Role Play",
                        size: 90,
                        image:
                            "https://sklegend.net/public/static/uploads/bg970home.jpg",
                        logo:
                            "https://i.ytimg.com/vi/uYYWeyEde6k/maxresdefault.jpg",
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15, left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Newly launched games",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Icon(Icons.more_vert),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CustomApps(
                        gamesName: "SK Legends 2",
                        rolePlay: "Role Play",
                        size: 90,
                        image:
                            "https://sklegend.net/public/static/uploads/bg970home.jpg",
                        logo:
                            "https://i.ytimg.com/vi/uYYWeyEde6k/maxresdefault.jpg",
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      CustomApps(
                        gamesName: "SK Legends 2",
                        rolePlay: "Role Play",
                        size: 90,
                        image:
                            "https://sklegend.net/public/static/uploads/bg970home.jpg",
                        logo:
                            "https://i.ytimg.com/vi/uYYWeyEde6k/maxresdefault.jpg",
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      CustomApps(
                        gamesName: "SK Legends 2",
                        rolePlay: "Role Play",
                        size: 90,
                        image:
                            "https://sklegend.net/public/static/uploads/bg970home.jpg",
                        logo:
                            "https://i.ytimg.com/vi/uYYWeyEde6k/maxresdefault.jpg",
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      CustomApps(
                        gamesName: "SK Legends 2",
                        rolePlay: "Role Play",
                        size: 90,
                        image:
                            "https://sklegend.net/public/static/uploads/bg970home.jpg",
                        logo:
                            "https://i.ytimg.com/vi/uYYWeyEde6k/maxresdefault.jpg",
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      CustomApps(
                        gamesName: "SK Legends 2",
                        rolePlay: "Role Play",
                        size: 90,
                        image:
                            "https://sklegend.net/public/static/uploads/bg970home.jpg",
                        logo:
                            "https://i.ytimg.com/vi/uYYWeyEde6k/maxresdefault.jpg",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

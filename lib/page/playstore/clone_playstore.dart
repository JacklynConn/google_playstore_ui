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
                            "https://th.bing.com/th/id/OIP.nhjLXD1jUHwrZ4fg6ATKAgHaFj?rs=1&pid=ImgDetMain",
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
                        gamesName: "Roblox",
                        rolePlay: "Role Play",
                        size: 90,
                        image:
                        "https://th.bing.com/th/id/OIP.1mrjfUbgCh7Kz-lTGYZpCgHaD4?rs=1&pid=ImgDetMain",
                        logo:
                        "https://th.bing.com/th/id/R.0c215277a5b9286286656f65318057f8?rik=PCsWh9R8pS4h3w&pid=ImgRaw&r=0",
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      CustomApps(
                        gamesName: "Mobile Legends",
                        rolePlay: "Role Play",
                        size: 90,
                        image:
                        "https://th.bing.com/th/id/OIP.oJwZxkhO2mKLgNLSh73IAwHaDn?rs=1&pid=ImgDetMain",
                        logo:
                        "https://th.bing.com/th/id/OIF.BM5lHehRq6rVGd3jipWFfA?rs=1&pid=ImgDetMain",
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

                      SizedBox(
                        width: 5,
                      ),
                      CustomApps(
                        gamesName: "Clash of Clans",
                        rolePlay: "Role Play",
                        size: 90,
                        image:
                            "https://th.bing.com/th?id=OIF.uM9lCUpqAy%2fT%2bHdyRhW74A&rs=1&pid=ImgDetMain",
                        logo:
                            "https://th.bing.com/th/id/OIP.2LUauxMw2KIdOkB9a4nR6wHaHa?rs=1&pid=ImgDetMain",
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      CustomApps(
                        gamesName: "Subway Surfers",
                        rolePlay: "Role Play",
                        size: 90,
                        image:
                            "https://th.bing.com/th/id/OIP.WvVhfdSaY6eNTBo2dQxJIAHaJ4?rs=1&pid=ImgDetMain",
                        logo:
                            "https://th.bing.com/th/id/OIP.gkzQAfsjPN5eGaUlUC1F4AAAAA?rs=1&pid=ImgDetMain",
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

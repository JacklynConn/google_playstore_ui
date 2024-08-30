import 'package:flutter/material.dart';
import 'custom_apps.dart';

class LayoutApps extends StatefulWidget {
  const LayoutApps({super.key});

  @override
  State<LayoutApps> createState() => _LayoutAppsState();
}

class _LayoutAppsState extends State<LayoutApps> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        "Based on your recent activity",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Icon(Icons.arrow_forward),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CustomApps(
                            gamesName: "Tik Tok Lite",
                            rolePlay: "Social • Network",
                            rate: 4.3,
                            logo:
                                "https://play.seletronic.com.br/wp-content/uploads/sites/19/2020/12/tiktok-lite-icon.png",
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          CustomApps(
                            gamesName: "Duolingo:",
                            rolePlay: "language lessons",
                            rate: 4.5,
                            logo:
                                "https://m.media-amazon.com/images/I/41cwNN2n2wL._AC_UL320_.png",
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          CustomApps(
                            gamesName: "Food Panda:",
                            rolePlay: "food & groceries",
                            rate: 4.5,
                            logo:
                                "https://th.bing.com/th/id/OIP.NuqoylnYpxHMlhSleDylywAAAA?pid=ImgDet&rs=1",
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          CustomApps(
                            gamesName: "KineMaster",
                            rolePlay: "Video Editor",
                            rate: 4.3,
                            logo:
                                "https://yt3.ggpht.com/-tULD4uhX9gA/AAAAAAAAAAI/AAAAAAAAAAA/x6WGq5d5kwA/s900-c-k-no/photo.jpg",
                          ),
                        ],
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
                        "Suggested for you",
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
                        gamesName: "Grab-Taxi",
                        rolePlay: "Food Delivery",
                        rate: 4.8,
                        logo:
                            "https://www.chatukchak.com/images/delivery/Grab-Food-01.png",
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      CustomApps(
                        gamesName: "PassApp",
                        rolePlay: "Travel& Loacal",
                        rate: 4.3,
                        logo:
                            "https://image.winudf.com/v2/image/Y29tLm11bHRpYnJhaW5zLnRheGkucGFzc2VuZ2VyLnBhc3NhcHB0YXhpc19pY29uXzE1MzgxODU2MjBfMDE1/icon.png?w=170&fakeurl=1&type=.png",
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      CustomApps(
                        gamesName: "SK Legends 2",
                        rolePlay: "Role Play",
                        rate: 4.3,
                        logo:
                            "https://i.ytimg.com/vi/uYYWeyEde6k/maxresdefault.jpg",
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      CustomApps(
                        gamesName: "SK Legends 2",
                        rolePlay: "Role Play",
                        rate: 4.3,
                        logo:
                            "https://i.ytimg.com/vi/uYYWeyEde6k/maxresdefault.jpg",
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      CustomApps(
                        gamesName: "SK Legends 2",
                        rolePlay: "Role Play",
                        rate: 4.3,
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
                        rate: 4.3,
                        logo:
                            "https://i.ytimg.com/vi/uYYWeyEde6k/maxresdefault.jpg",
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      CustomApps(
                        gamesName: "SK Legends 2",
                        rolePlay: "Role Play",
                        rate: 4.3,
                        logo:
                            "https://i.ytimg.com/vi/uYYWeyEde6k/maxresdefault.jpg",
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      CustomApps(
                        gamesName: "SK Legends 2",
                        rolePlay: "Role Play",
                        rate: 4.3,
                        logo:
                            "https://i.ytimg.com/vi/uYYWeyEde6k/maxresdefault.jpg",
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      CustomApps(
                        gamesName: "SK Legends 2",
                        rolePlay: "Role Play",
                        rate: 4.3,
                        logo:
                            "https://i.ytimg.com/vi/uYYWeyEde6k/maxresdefault.jpg",
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      CustomApps(
                        gamesName: "SK Legends 2",
                        rolePlay: "Role Play",
                        rate: 4.3,
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

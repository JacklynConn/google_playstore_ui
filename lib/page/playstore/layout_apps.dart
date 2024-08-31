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
                        gamesName: "Komsan",
                        rolePlay: "Travel & Local",
                        rate: 4.3,
                        logo:
                            "https://play-lh.googleusercontent.com/hhlCaOmBxNWOz5Q5LPP3W0xYBDVEgcgjZczMWK2sQzx2na4-357kZNnT8gOrp3d2kRc=w240-h480-rw",
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      CustomApps(
                        gamesName: "Telegram",
                        rolePlay: "Role Play",
                        rate: 4.3,
                        logo:
                            "https://th.bing.com/th/id/OIP.yqodwEznSiWEnm9oaKGIHQAAAA?w=250&h=250&rs=1&pid=ImgDetMain",
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      CustomApps(
                        gamesName: "Facebook",
                        rolePlay: "Media Social",
                        rate: 4.3,
                        logo:
                            "https://upload.wikimedia.org/wikipedia/commons/e/ee/Logo_de_Facebook.png",
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
                        "Similar apps",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(Icons.more_vert),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CustomApps(
                        gamesName: "Facebook",
                        rolePlay: "Meta Social",
                        rate: 4.3,
                        logo:
                            "https://upload.wikimedia.org/wikipedia/commons/e/ee/Logo_de_Facebook.png",
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      CustomApps(
                        gamesName: "Messenger",
                        rolePlay: "Meta Social",
                        rate: 4.3,
                        logo:
                            "https://img.freepik.com/premium-vector/round-messenger-logo-isolated-white-background_469489-902.jpg",
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      CustomApps(
                        gamesName: "WhatsApp",
                        rolePlay: "Messenger",
                        rate: 4.3,
                        logo:
                            "https://th.bing.com/th/id/R.01344e3ee6a9abecaaca564450dc0da7?rik=xumT3a6URtLOFw&riu=http%3a%2f%2f2.bp.blogspot.com%2f-eLZYF9wb5do%2fU6bmKklB9jI%2fAAAAAAAAIFc%2fXKKMf3xv_is%2fs1600%2fMacJunky-Whatsapp-icon.png&ehk=QKyApY4g%2buXKVSqpffYUB9reFFW7iB68ilN64drrNTg%3d&risl=&pid=ImgRaw&r=0",
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      CustomApps(
                        gamesName: "Instagram",
                        rolePlay: "Meta Social",
                        rate: 4.3,
                        logo:
                            "https://th.bing.com/th/id/R.5e04fd779e7607a47d0bad14976caa90?rik=MYieavaZpaXrMw&riu=http%3a%2f%2f1000logos.net%2fwp-content%2fuploads%2f2017%2f02%2fNew-Instagram-logo.jpg&ehk=kTNHOU7RNhSBC8VTl4FPXOmyjXgyJlrNtPiZ9qk03fA%3d&risl=&pid=ImgRaw&r=0",
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      CustomApps(
                        gamesName: "ChatGPT",
                        rolePlay: "OpenAI",
                        rate: 4.3,
                        logo:
                            "https://1000logos.net/wp-content/uploads/2023/02/ChatGPT-Logo.jpg",
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

import 'package:flutter/material.dart';

class AppBar1 extends StatefulWidget {
  const AppBar1({super.key});

  @override
  State<AppBar1> createState() => _AppBar1State();
}

class _AppBar1State extends State<AppBar1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar,
      body: _buildBoday2,
    );
  }

  Widget get _buildBoday2 {
    String pic =
        "https://th.bing.com/th/id/OIP.w6Cs6qz234c71XloeqKdwgHaHa?pid=ImgDet&rs=1";

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildStory(pic),
                buildStory(pic),
                buildStory(pic),
                buildStory(pic),
                buildStory(pic),
                buildStory(pic),
              ],
            ),
          ),
          _buildContent(),
          _buildContent(),
          _buildContent(),
        ],
      ),
    );
  }

  Widget _buildContent() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.symmetric(horizontal: 10),
          width: double.infinity,
          height: 310,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://th.bing.com/th/id/OIP.w6Cs6qz234c71XloeqKdwgHaHa?pid=ImgDet&rs=1"),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Machksp",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: NetworkImage(
                            'https://img.freepik.com/free-photo/waistup-shot-two-asian-businessmen-standing-with-arms-folded-outdoors_1098-20776.jpg?w=1380&t=st=1693657885~exp=1693658485~hmac=a4aabe7e6ae9f1239f79acaed94bd36305c64b4c69e1791b193a87bea29a834e'),
                        fit: BoxFit.cover),
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(15)),
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.favorite),
                  Text("200000 Like"),
                  Icon(Icons.comment),
                  Text("2000 Comments"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildStory(pic) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.green, width: 4),
        shape: BoxShape.circle,
        image: DecorationImage(
          image: NetworkImage(pic),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  AppBar get _buildAppBar {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 6, //shadow
      title: const Text(
        "Home Page",
        style: TextStyle(),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.settings,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.notifications,
          ),
        )
      ],
    );
  }

  Widget buildBody1() {
    return SingleChildScrollView(
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black, width: 3),
                      image: const DecorationImage(
                        image: NetworkImage(
                            "https://www.varmanwatches.com/cdn/shop/products/IMG_0206_540x.jpg?v=1679560951"),
                      ),
                      color: Colors.yellow,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          // offset: Offset(5, 5),
                          blurRadius: 5,
                        )
                      ],
                    ),
                    alignment: Alignment.center,
                    width: 200,
                    height: 200,
                    // child: Image.network(
                    //   "https://www.varmanwatches.com/cdn/shop/products/IMG_0206_540x.jpg?v=1679560951",
                    //   // fit: BoxFit.cover,
                    // ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black, width: 3),
                      image: const DecorationImage(
                        image: NetworkImage(
                            "https://www.varmanwatches.com/cdn/shop/products/IMG_0206_540x.jpg?v=1679560951"),
                      ),
                      color: Colors.yellow,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          // offset: Offset(5, 5),
                          blurRadius: 5,
                        )
                      ],
                    ),
                    alignment: Alignment.center,
                    width: 200,
                    height: 200,
                    // child: Image.network(
                    //   "https://www.varmanwatches.com/cdn/shop/products/IMG_0206_540x.jpg?v=1679560951",
                    //   // fit: BoxFit.cover,
                    // ),
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              obscureText: true,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.visibility),
                  border: OutlineInputBorder(),
                  hintText: "Input here"),
            ),
          )
        ],
      ),
    );
  }
}

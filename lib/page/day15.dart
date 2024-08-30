import 'package:flutter/material.dart';
import 'package:myfirst_project_flutter3/page/Detail_page2_day15.dart';
import 'package:myfirst_project_flutter3/page/Detail_page_day15.dart';

class Day15 extends StatefulWidget {
  const Day15({super.key});

  @override
  State<Day15> createState() => _Day15State();
}

class _Day15State extends State<Day15> {
  String pic =
      "https://www.epicscotland.com/wp-content/uploads/2018/01/Business-Headshot_002.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar,
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              decoration: const BoxDecoration(color: Colors.yellow),
              currentAccountPicture: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue,
                  image: DecorationImage(
                    image: NetworkImage(pic),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              accountName: const Text("Mak Machksp"),
              accountEmail: const Text("makmach1122@gmail.com"),
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
              },
              title: Text("Home"),
              leading: const Icon(Icons.home),
              subtitle: const Text("Click To HomeScreen"),
            ),
            const ListTile(
              title: Text("Notifications"),
              leading: Icon(Icons.notifications),
            ),
            const ListTile(
              title: Text("Contact Us"),
              leading: Icon(Icons.contact_emergency),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DetailPageDay15(),
                  ),
                );
              },
              child: _buildContent()),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailPageDay15(),
                ),
              );
            },
            child: const Text("Click Me"),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DetailPage2Day15(),
                  ),
                  (route) => false);
            },
            child: Container(
              alignment: Alignment.center,
              width: 100,
              height: 50,
              color: Colors.blue,
              child: const Text("Click Here"),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }

  get buildStack {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          color: Colors.red,
        ),
        Positioned(
          top: 10,
          bottom: 10,
          right: 10,
          left: 10,
          child: Container(
            height: 200,
            width: 200,
            color: Colors.blue,
          ),
        ),
        Positioned(
          top: 100,
          bottom: 15,
          right: 15,
          left: 15,
          child: Container(
            height: 200,
            width: 200,
            color: Colors.yellow,
          ),
        ),
      ],
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
              Stack(
                alignment: Alignment.topRight,
                children: [
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
                  Positioned(
                    top: 10,
                    right: 10,
                    child: Container(
                      height: 30,
                      width: 30,
                      // color: Colors.red,
                      child: const Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
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
      backgroundColor: Colors.blue,
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

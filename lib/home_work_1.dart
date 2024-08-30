import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeWork1 extends StatefulWidget {
  const HomeWork1({super.key});

  @override
  State<HomeWork1> createState() => _HomeWork1State();
}

class _HomeWork1State extends State<HomeWork1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody,
    );
  }

  Widget get _buildBody {
    return Container(
      padding: const EdgeInsets.all(15),
      color: Colors.grey.withOpacity(0.2),
      child: _buildMainListView,
    );
  }

  Widget get _buildMainListView {
    return ListView(
      children: [
        _buildTitle,
        _buildTextField,
        _buildCategoryItem,
        _buildCard,
      ],
    );
  }

  Widget get _buildCard {
    return Column(
      children: [
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
          child: Row(
            children: [
              Expanded(
                flex: 5,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://makro-hybris-media.s3.amazonaws.com/sys-master/images/hc0/hc7/8910184349726/silo-MIN_350605_EAA_large"),
                          ),
                          // color: Colors.red,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        width: double.infinity,
                        height: 200,
                        child: Stack(
                          children: [
                            Positioned(
                              top: 10,
                              right: 15,
                              child: Container(
                                alignment: Alignment.center,
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey.withOpacity(0.2),
                                ),
                                child: const Icon(
                                  CupertinoIcons.heart_fill,
                                  size: 18,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Irul Chair",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "by Sento",
                        style: TextStyle(color: Colors.black45),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Ergonomical for humans",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      const Text(
                        "body curve.",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Row(
                            children: [
                              Text(
                                "\$102",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                ".00",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 60,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Colors.indigo,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Text(
                              "Buy",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0), //<-- SEE HERE
          ),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                width: 180,
                height: 220,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://th.bing.com/th/id/OIP.tTPAHMcx-Av5HOrZleuObQHaHa?pid=ImgDet&rs=1"),
                        ),
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      width: double.infinity,
                      height: 200,
                      child: Stack(
                        children: [
                          Positioned(
                            top: 10,
                            right: 20,
                            child: Container(
                              alignment: Alignment.center,
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey.withOpacity(0.2),
                              ),
                              child: const Icon(
                                CupertinoIcons.heart_fill,
                                size: 18,
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(15),
                width: 180,
                height: 220,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Malik Chair",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      "by Karjo",
                      style: TextStyle(color: Colors.black45),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Extra Comfy chair with a",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    const Text(
                      "palm rest.",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Row(
                          children: [
                            Text(
                              "\$221",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              ".00",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 60,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.indigo,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Text(
                            "Buy",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0), //<-- SEE HERE
          ),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                width: 180,
                height: 220,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://th.bing.com/th/id/OIP.ZKCxIOeBXiELRdeDfQgRzQHaHa?pid=ImgDet&rs=1"),
                        ),
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      width: double.infinity,
                      height: 200,
                      child: Stack(
                        children: [
                          Positioned(
                            top: 10,
                            right: 20,
                            child: Container(
                              alignment: Alignment.center,
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey.withOpacity(0.2),
                              ),
                              child: const Icon(
                                CupertinoIcons.heart_fill,
                                size: 18,
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(15),
                width: 180,
                height: 220,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Scranton & Co Modern Office Chair",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "by Sento",
                        style: TextStyle(color: Colors.black45),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Ergonomical for humans",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      const Text(
                        "body curve.",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Row(
                            children: [
                              Text(
                                "\$102",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                ".00",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 60,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Colors.indigo,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Text(
                              "Buy",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget get _buildCategoryItem {
    return Container(
      margin: EdgeInsets.only(right: 10),
      alignment: Alignment.centerLeft,
      width: double.infinity,
      height: 80,
      // color: Colors.red,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            alignment: Alignment.center,
            width: 60,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.indigo.withOpacity(0.7),
              borderRadius: BorderRadius.circular(50),
            ),
            child: const Text(
              "All",
              style: TextStyle(
                color: Colors.white70,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          const Text(
            "Chair",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black45,
              fontSize: 18,
            ),
          ),
          const Text(
            "Table",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black45,
              fontSize: 18,
            ),
          ),
          const Text(
            "Lamp",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black45,
              fontSize: 18,
            ),
          ),
          const Text(
            "Floor",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black45,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }

  Widget get _buildTitle {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      height: 120,
      // color: Colors.green,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Best Furniture",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.indigo),
          ),
          Text(
            "Perfect Choice!",
            style: TextStyle(fontSize: 20, color: Colors.indigo),
          ),
        ],
      ),
    );
  }

  Widget get _buildTextField {
    return SizedBox(
      height: 55,
      // color: Colors.red,
      child: Row(
        children: [
          Expanded(
            flex: 5,
            child: Container(
              padding: const EdgeInsets.only(left: 20, top: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: TextField(
                autofocus: true,
                decoration: InputDecoration(
                  hintStyle: TextStyle(
                    color: Colors.grey.withOpacity(0.5),
                  ),
                  hintText: "Search",
                  prefixIcon: Icon(
                    CupertinoIcons.search,
                    color: Colors.indigo.withOpacity(0.8),
                    size: 30,
                  ),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            flex: 1,
            child: Container(
              height: 80,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Icon(
                Icons.list_outlined,
                size: 35,
                color: Colors.indigo.withOpacity(0.8),
              ),
            ),
          )
        ],
      ),
    );
  }
}

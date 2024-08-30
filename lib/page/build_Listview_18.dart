import 'package:flutter/material.dart';
import '../models/items_modeal.dart';

class BuildListView18 extends StatefulWidget {
  const BuildListView18({super.key});

  @override
  State<BuildListView18> createState() => _BuildListView18State();
}

class _BuildListView18State extends State<BuildListView18> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test List View"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Card(
                  child: SizedBox(
                    width: 120,
                    // color: Colors.blue,
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 5),
                          width: 100,
                          height: 100,
                          child: Image.network(items[index].image),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(items[index].itemName),
                        Text("${items[index].price}")
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      leading: Image.network(items[index].image),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    height: 20,
                    color: Colors.grey,
                    child: Text("${index + 1}"),
                  );
                },
                itemCount: items.length),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Card(
                  child: SizedBox(
                    width: 120,
                    // color: Colors.blue,
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 5),
                          width: 100,
                          height: 100,
                          child: Image.network(items[index].image),
                        ),
                        // Text(items[index].itemName),
                        // Text("${items[index].price}")
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

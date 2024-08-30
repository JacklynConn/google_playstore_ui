import 'package:flutter/material.dart';

class CustomApps extends StatelessWidget {
  final String gamesName, rolePlay, image, logo;
  final int size;

  const CustomApps(
      {super.key,
      required this.gamesName,
      required this.rolePlay,
      required this.image,
      required this.logo,
      required this.size});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 195,
      height: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 5),
            height: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(image),
              ),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 5),
                child: Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(logo),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          gamesName,
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          rolePlay,
                          style: const TextStyle(
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          "$size MB",
                          style: const TextStyle(fontSize: 12),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

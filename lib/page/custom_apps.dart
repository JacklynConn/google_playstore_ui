import 'package:flutter/material.dart';

class CustomApps extends StatelessWidget {
  final String gamesName, rolePlay, logo;
  final double rate;

  const CustomApps(
      {super.key,
      required this.gamesName,
      required this.rolePlay,
      required this.logo,
      required this.rate});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 110,
      height: 180,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(logo),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 3),
                      child: Column(
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
                          Row(
                            children: [
                              Text(
                                "$rate ",
                                style: const TextStyle(fontSize: 12),
                              ),
                              const Icon(Icons.star, size: 10,)
                            ],
                          ),
                        ],
                      ),
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

import 'package:flutter/material.dart';
import 'package:sport/widgets/popularsports.dart';

class PopularScreen extends StatelessWidget {
  const PopularScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        titleSpacing: 70,
        backgroundColor: const Color.fromRGBO(37, 37, 37, 1),
        title: const Text(
          "Football",
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),
        ),
      ),
      body: Column(
        children: [
          Container(
              height: 42,
              color: const Color.fromRGBO(198, 198, 198, 1),
              child: const Center(
                  child: Text(
                "Popular",
                style: TextStyle(
                    color: Color.fromRGBO(81, 81, 81, 1),
                    fontWeight: FontWeight.w500,
                    fontSize: 14),
              ))),
          Expanded(
            child: ListView(
              children: const [
                PopularSports(),
                PopularSports(),
                PopularSports(),
                PopularSports(),
                PopularSports(),
                PopularSports(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

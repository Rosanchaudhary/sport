import 'package:flutter/material.dart';
import 'package:sport/screens/favourite_screen.dart';
import 'package:sport/screens/live_screen.dart';
import 'package:sport/screens/popular_screen.dart';
import 'package:sport/widgets/sportlist.dart';

class SportScreen extends StatelessWidget {
  final String title;
  const SportScreen({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        titleSpacing: 70,
        backgroundColor: const Color.fromRGBO(37, 37, 37, 1),
        title: Text(
          title,
          style: const TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),
        ),
      ),
      body: ListView(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PopularScreen()));
            },
            child: const SportListWidget(
              name: 'Popular',
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const LiveScreen()));
            },
            child: const SportListWidget(
              name: 'Live Matches',
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const FavouriteScreen()));
            },
            child: const SportListWidget(
              name: 'Favourite',
            ),
          ),
        ],
      ),
    );
  }
}

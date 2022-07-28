import 'package:flutter/material.dart';
import 'package:sport/screens/sport_screen.dart';
import 'package:sport/widgets/sportlist.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        titleSpacing: 100,
        backgroundColor: const Color.fromRGBO(37, 37, 37, 1),
        title: const Text(
          "Main Screen",
          style: TextStyle(
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
                      builder: (context) => const SportScreen(
                            title: "Football",
                          )));
            },
            child: const SportListWidget(
              name: 'Football',
            ),
          ),
          const SportListWidget(
            name: 'Football',
          ),
          const SportListWidget(
            name: 'Football',
          ),
          const SportListWidget(
            name: 'Football',
          ),
          const SportListWidget(
            name: 'Football',
          ),
          const SportListWidget(
            name: 'Football',
          ),
          const SportListWidget(
            name: 'Football',
          ),
          const SportListWidget(
            name: 'Football',
          ),
        ],
      ),
    );
  }
}

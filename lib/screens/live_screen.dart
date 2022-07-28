import 'package:flutter/material.dart';
import 'package:sport/models/match_model.dart';
import 'package:sport/widgets/livesportswidget.dart';

class LiveScreen extends StatefulWidget {
  const LiveScreen({Key? key}) : super(key: key);

  @override
  State<LiveScreen> createState() => _LiveScreenState();
}

class _LiveScreenState extends State<LiveScreen> {
  final List<Matches> data = <Matches>[
    const Matches(
        id: '1',
        teamA: "Buchenbühl",
        teamB: "Feucht II",
        statrtingTime: "13.07",
        endingTime: "15:45",
        score: "0:0"),
    const Matches(
        id: '2',
        teamA: "Buchenbühl",
        teamB: "Feucht II",
        statrtingTime: "13.07",
        endingTime: "15:45",
        score: "0:0"),
    const Matches(
        id: '3',
        teamA: "Buchenbühl",
        teamB: "Feucht II",
        statrtingTime: "13.07",
        endingTime: "15:45",
        score: "0:0"),
    const Matches(
        id: '4',
        teamA: "Buchenbühl",
        teamB: "Feucht II",
        statrtingTime: "13.07",
        endingTime: "15:45",
        score: "0:0"),
    const Matches(
        id: '5',
        teamA: "Buchenbühl",
        teamB: "Feucht II",
        statrtingTime: "13.07",
        endingTime: "15:45",
        score: "0:0"),
  ];

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
                "Live",
                style: TextStyle(
                    color: Color.fromRGBO(81, 81, 81, 1),
                    fontWeight: FontWeight.w500,
                    fontSize: 14),
              ))),
          Expanded(
            child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (BuildContext context, int index) {
                return LiveSportsWidget(
                  keyForTile:PageStorageKey<Matches>(data[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

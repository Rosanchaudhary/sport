import 'package:flutter/material.dart';

class SportListWidget extends StatelessWidget {
  final String name;
  const SportListWidget({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(width: 1.5, color: Colors.grey.shade100),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              name,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            const Icon(
              Icons.chevron_right,
              color: Color.fromRGBO(255, 179, 0, 1),
            )
          ],
        ),
      ),
    );
  }
}

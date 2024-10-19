import 'package:flutter/material.dart';

class BaselineView extends StatelessWidget {
  const BaselineView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Base Line"),
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              width: 300,
              height: 300,
              color: Colors.lightBlue.shade100,
              child: const Baseline(
                baseline: 300,
                baselineType: TextBaseline.alphabetic,
                child: Text(
                  "Open",
                  style: TextStyle(fontSize: 60),
                ),
              ),
            ),
          ),
          const Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Baseline(
                  baseline: 60,
                  baselineType: TextBaseline.alphabetic,
                  child: Text(
                    "Hey",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Text(
                  "Jude",
                  style: TextStyle(fontSize: 80),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

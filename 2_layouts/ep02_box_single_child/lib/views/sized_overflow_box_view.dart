import 'package:flutter/material.dart';

class SizedOverflowBoxView extends StatelessWidget {
  const SizedOverflowBoxView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sized Overflow Box"),
      ),
      body: Center(
        child: Container(
          color: Colors.blue,
          child: SizedOverflowBox(
            size: const Size(300, 100),
            alignment: Alignment.topLeft,
            child: Container(
              color: Colors.red,
              width: 100,
              height: 300,
            ),
          ),
        ),
      ),
    );
  }
}

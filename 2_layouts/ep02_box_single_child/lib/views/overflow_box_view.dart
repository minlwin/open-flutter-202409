import 'package:flutter/material.dart';

class OverflowBoxView extends StatelessWidget {
  const OverflowBoxView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Overflow Box")),
      body: Center(
        child: Container(
          width: 300,
          height: 100,
          color: Colors.blue,
          child: OverflowBox(
            minHeight: 200,
            maxHeight: 400,
            minWidth: 100,
            maxWidth: 200,
            child: Container(
              width: 100,
              height: 200,
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}

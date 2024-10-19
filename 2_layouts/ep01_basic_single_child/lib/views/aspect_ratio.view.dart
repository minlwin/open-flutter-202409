import 'package:flutter/material.dart';

class AspectRatioView extends StatelessWidget {
  const AspectRatioView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Aspect Ratio"),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: AspectRatio(
          aspectRatio: 3 / 2,
          child: Container(
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}

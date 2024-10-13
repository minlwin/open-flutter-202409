import 'package:flutter/material.dart';

class AlignmentView extends StatelessWidget {
  const AlignmentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alighment"),
      ),
      body: const Align(
        alignment: Alignment.topLeft,
        child: FlutterLogo(
          size: 240,
        ),
      ),
    );
  }
}

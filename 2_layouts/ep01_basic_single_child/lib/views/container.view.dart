import 'package:flutter/material.dart';

class ContainerView extends StatelessWidget {
  const ContainerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Container"),
      ),
      body: Container(
        alignment: Alignment.topRight,
        padding: const EdgeInsets.only(right: 16),
        decoration: const BoxDecoration(color: Colors.blue),
        child: const SizedBox(
          width: 200,
          height: 100,
          child: Placeholder(),
        ),
      ),
    );
  }
}

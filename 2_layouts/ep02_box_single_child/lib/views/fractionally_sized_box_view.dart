import 'package:flutter/material.dart';

class FractionallySizedBoxView extends StatelessWidget {
  const FractionallySizedBoxView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Fractionally Sized Box")),
      body: Center(
        child: FractionallySizedBox(
          widthFactor: 0.8,
          heightFactor: 0.5,
          child: Container(
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}

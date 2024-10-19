import 'package:flutter/material.dart';

class TransformView extends StatelessWidget {
  const TransformView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Transform"),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(24),
        child: Transform.translate(
          offset: const Offset(60, -60),
          child: Transform.rotate(
            angle: 90,
            child: Transform.scale(
              scale: 0.5,
              child: AspectRatio(
                aspectRatio: 1,
                child: Container(
                  color: Colors.blue,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

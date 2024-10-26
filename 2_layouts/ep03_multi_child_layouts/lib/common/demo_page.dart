import 'package:flutter/material.dart';

class DemoPage extends StatelessWidget {
  final Widget child;
  final String title;
  const DemoPage({super.key, required this.title, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: child,
    );
  }
}

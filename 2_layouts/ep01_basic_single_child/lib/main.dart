import 'package:ep01_basic_single_child/views/alignment.view.dart';
import 'package:ep01_basic_single_child/views/home.view.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const SingleChildApp());
}

class SingleChildApp extends StatelessWidget {
  const SingleChildApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (_) => const HomeView(),
        "/alighment": (_) => const AlignmentView(),
      },
      initialRoute: "/",
    );
  }
}

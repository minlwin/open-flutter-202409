import 'package:ep02_counter/counter_app.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: CounterApp(),
    ),
  ));
}

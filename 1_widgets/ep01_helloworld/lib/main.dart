import 'package:ep01_helloworld/views/hello_world.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HelloWorldView(),
    ),
  );
}

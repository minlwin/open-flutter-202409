import 'package:ep03_profile/views/profile_view.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: ProfileView(),
    ),
  ));
}

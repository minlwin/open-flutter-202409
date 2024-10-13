import 'package:ep03_profile/model/profile.model.dart';
import 'package:ep03_profile/views/profile_view.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: ProfileData(
        profile: Profile(
          profileImage: "images/profile.png",
          name: "Thidar Aung",
          phone: "09782003098",
          email: "thidar@gmail.com",
          address:
              "No 120B/1F Yadanar Myaing Street, Kamayut 1 Quarter, Kamayut",
        ),
        child: ProfileView(),
      ),
    ),
  ));
}

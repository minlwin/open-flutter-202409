import 'package:ep03_profile/model/profile.model.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key, required this.profile});

  final Profile profile;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const ProfileBackground(),
        Column(
          children: [
            ProfileHeader(image: profile.profileImage),
          ],
        ),
      ],
    );
  }
}

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 7 * 3,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image(image: AssetImage(image)),
          const SizedBox(width: 50),
        ],
      ),
    );
  }
}

class ProfileBackground extends StatelessWidget {
  const ProfileBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        DecoratedBox(
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 26, 23, 136),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50), topRight: Radius.circular(50)),
          ),
          child: SizedBox(
            height: MediaQuery.of(context).size.height / 4 * 3,
            width: MediaQuery.of(context).size.width,
          ),
        ),
      ],
    );
  }
}

import 'package:ep03_profile/model/profile.model.dart';
import 'package:flutter/material.dart';

class ProfileData extends InheritedWidget {
  const ProfileData({
    super.key,
    required super.child,
    required this.profile,
  });

  final Profile profile;

  static ProfileData? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ProfileData>();
  }

  @override
  bool updateShouldNotify(covariant ProfileData oldWidget) {
    return profile != oldWidget.profile;
  }
}

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        ProfileBackground(),
        ProfileHeader(),
        ProfileBody(),
      ],
    );
  }
}

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    var profile = ProfileData.of(context)!.profile;
    return Padding(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.height / 7 * 2.8,
        left: 32,
        right: 32,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProfileInfoItem(
            label: "Name",
            value: profile.name,
          ),
          ProfileInfoItem(
            label: "Phone",
            value: profile.phone,
          ),
          ProfileInfoItem(
            label: "Email",
            value: profile.email,
          ),
          ProfileInfoItem(
            label: "Address",
            value: profile.address,
          ),
        ],
      ),
    );
  }
}

class ProfileInfoItem extends StatelessWidget {
  const ProfileInfoItem({super.key, required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
          Text(
            value,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 7 * 3,
      width: MediaQuery.of(context).size.width,
      child: Container(
          alignment: Alignment.centerRight,
          padding: const EdgeInsets.only(right: 60),
          child: Image(
              image:
                  AssetImage(ProfileData.of(context)!.profile.profileImage))),
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

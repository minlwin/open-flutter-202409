import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Base Single Child"),
      ),
      drawer: const SideBarMenu(),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const FlutterLogo(
              size: 240,
            ),
            Text("Open Flutter",
                style: Theme.of(context).textTheme.headlineLarge),
            Text(
              "Java Developer Class",
              style: Theme.of(context).textTheme.headlineSmall,
            )
          ],
        ),
      ),
    );
  }
}

class SideBarMenu extends StatelessWidget {
  const SideBarMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              child: Text("JDC"),
            ),
            accountName: Text("Base Single Child Laytout"),
            accountEmail: Text("Java Developer Class"),
          ),
          ListTile(
            title: const Text("Alighment"),
            onTap: () => Navigator.of(context).pushNamed("/alighment"),
          ),
          const ListTile(
            title: Text("Padding"),
          ),
          const ListTile(
            title: Text("Container"),
          ),
          const ListTile(
            title: Text("Base Line"),
          ),
          const ListTile(
            title: Text("Transform"),
          ),
        ],
      ),
    );
  }
}

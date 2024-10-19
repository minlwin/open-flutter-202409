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
      body: SingleChildScrollView(
        child: SizedBox(
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
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ListTile(
                    title: const Text("Alighment"),
                    onTap: () => Navigator.of(context).pushNamed("/alighment"),
                  ),
                  ListTile(
                    title: const Text("Padding"),
                    onTap: () => Navigator.of(context).pushNamed("/padding"),
                  ),
                  ListTile(
                    title: const Text("Container"),
                    onTap: () => Navigator.of(context).pushNamed("/container"),
                  ),
                  ListTile(
                    title: const Text("Base Line"),
                    onTap: () => Navigator.of(context).pushNamed("/baseline"),
                  ),
                  ListTile(
                    title: const Text("Aspect Ratio"),
                    onTap: () => Navigator.of(context).pushNamed("/aspect"),
                  ),
                  ListTile(
                    title: const Text("Transform"),
                    onTap: () => Navigator.of(context).pushNamed("/transform"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

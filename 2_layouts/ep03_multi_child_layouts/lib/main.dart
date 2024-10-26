import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MultiChildLayoutApp());
}

class MultiChildLayoutApp extends StatelessWidget {
  const MultiChildLayoutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (_) => const MultiChildLayoutHome(),
      },
      initialRoute: "/",
      debugShowCheckedModeBanner: false,
    );
  }
}

class MultiChildLayoutHome extends StatelessWidget {
  const MultiChildLayoutHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Multi Child Layout"),
      ),
      drawer: const Sidebar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const FlutterLogo(
              size: 200,
            ),
            Text(
              "Multi Child Layout",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
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

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              child: FlutterLogo(),
            ),
            accountName: Text("Open Flutter"),
            accountEmail: Text("Java Developer Class"),
          ),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                ListTile(
                  title: Text("Row"),
                ),
                ListTile(
                  title: Text("Column"),
                ),
                ListTile(
                  title: Text("Stack"),
                ),
                ListTile(
                  title: Text("Indexed Stack"),
                ),
                ListTile(
                  title: Text("Flow"),
                ),
                ListTile(
                  title: Text("List View"),
                ),
                ListTile(
                  title: Text("Grid View"),
                ),
                ListTile(
                  title: Text("Layout Builder"),
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}

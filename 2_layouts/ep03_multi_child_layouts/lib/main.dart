import 'package:ep03_multi_child_layouts/ui/row_demo.dart';
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
        "/row": (_) => const RowDemo(),
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
    return Drawer(
      child: Column(
        children: [
          const UserAccountsDrawerHeader(
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
                  title: const Text("Row"),
                  onTap: () => Navigator.of(context).pushNamed("/row"),
                ),
                const ListTile(
                  title: Text("Column"),
                ),
                const ListTile(
                  title: Text("Stack"),
                ),
                const ListTile(
                  title: Text("Indexed Stack"),
                ),
                const ListTile(
                  title: Text("Flow"),
                ),
                const ListTile(
                  title: Text("List View"),
                ),
                const ListTile(
                  title: Text("Grid View"),
                ),
                const ListTile(
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

import 'package:ep02_box_single_child/views/constraint_box.view.dart';
import 'package:ep02_box_single_child/views/sized_box.view.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const BoxSingleChildApp());
}

class BoxSingleChildApp extends StatelessWidget {
  const BoxSingleChildApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (_) => const HomeView(),
        "/sized": (_) => const SizedBoxView(),
        "/constraint": (_) => const ConstraintBoxView(),
      },
      initialRoute: "/",
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Single Child Boxs"),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                child: FlutterLogo(
                  size: 30,
                ),
              ),
              accountName: Text("Box Widgets"),
              accountEmail: Text("Flutter Open Class"),
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  ListTile(
                    title: const Text("Sized Box"),
                    onTap: () => Navigator.of(context).pushNamed("/sized"),
                  ),
                  ListTile(
                    title: const Text("Constrained Box"),
                    onTap: () => Navigator.of(context).pushNamed("/constraint"),
                  ),
                  const ListTile(
                    title: Text("Fractionally Sized Box"),
                  ),
                  const ListTile(
                    title: Text("Limited Box"),
                  ),
                  const ListTile(
                    title: Text("Fitted Box"),
                  ),
                  const ListTile(
                    title: Text("Overflow Box"),
                  ),
                  const ListTile(
                    title: Text("Sized Overflow Box"),
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const FlutterLogo(
              size: 200,
            ),
            Text(
              "Box Widgets",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            Text(
              "Java Developer Class",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ],
        ),
      ),
    );
  }
}

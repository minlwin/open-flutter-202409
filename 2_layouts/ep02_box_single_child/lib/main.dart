import 'package:ep02_box_single_child/views/constraint_box_view.dart';
import 'package:ep02_box_single_child/views/fitted_box_view.dart';
import 'package:ep02_box_single_child/views/fractionally_sized_box_view.dart';
import 'package:ep02_box_single_child/views/limited_box_view.dart';
import 'package:ep02_box_single_child/views/sized_box_view.dart';
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
        "/fraction": (_) => const FractionallySizedBoxView(),
        "/limited": (_) => const LimitedBoxView(),
        "/fitted": (_) => const FittedBoxView(),
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
                  ListTile(
                    title: const Text("Fractionally Sized Box"),
                    onTap: () => Navigator.of(context).pushNamed("/fraction"),
                  ),
                  ListTile(
                    title: const Text("Limited Box"),
                    onTap: () => Navigator.of(context).pushNamed("/limited"),
                  ),
                  ListTile(
                    title: const Text("Fitted Box"),
                    onTap: () => Navigator.of(context).pushNamed("/fitted"),
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

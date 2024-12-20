import 'package:ep03_multi_child_layouts/ui/column_demo.dart';
import 'package:ep03_multi_child_layouts/ui/flow_demo.dart';
import 'package:ep03_multi_child_layouts/ui/grid_view_demo.dart';
import 'package:ep03_multi_child_layouts/ui/index_stack_demo.dart';
import 'package:ep03_multi_child_layouts/ui/layout_builder_demo.dart';
import 'package:ep03_multi_child_layouts/ui/list_view_demo.dart';
import 'package:ep03_multi_child_layouts/ui/row_demo.dart';
import 'package:ep03_multi_child_layouts/ui/stack_demo.dart';
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
        "/column": (_) => const ColumnDemo(),
        "/stack": (_) => const StackDemo(),
        "/indexed": (_) => const IndexStackDemo(),
        "/list": (_) => ListViewDemo(),
        "/grid": (_) => GridViewDemo(),
        "/flow": (_) => const FlowDemo(),
        "/builder": (_) => LayoutBuilderDemo(),
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
      body: OrientationBuilder(
        builder: (context, orientation) => orientation == Orientation.portrait
            ? _portrait(context)
            : _landscape(context),
      ),
    );
  }

  Widget _portrait(BuildContext context) {
    return Center(
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
    );
  }

  Widget _landscape(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const FlutterLogo(
            size: 200,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Multi Child Layout",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              Text(
                "Java Developer Class",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ],
          )
        ],
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
            child: ListView(
              padding: const EdgeInsets.only(top: 8, left: 8),
              shrinkWrap: true,
              children: [
                ListTile(
                  title: const Text("Row"),
                  onTap: () => Navigator.of(context).pushNamed("/row"),
                ),
                ListTile(
                  title: const Text("Column"),
                  onTap: () => Navigator.of(context).pushNamed("/column"),
                ),
                ListTile(
                  title: const Text("Stack"),
                  onTap: () => Navigator.of(context).pushNamed("/stack"),
                ),
                ListTile(
                  title: const Text("Indexed Stack"),
                  onTap: () => Navigator.of(context).pushNamed("/indexed"),
                ),
                ListTile(
                  title: const Text("List View"),
                  onTap: () => Navigator.of(context).pushNamed("/list"),
                ),
                ListTile(
                  title: const Text("Grid View"),
                  onTap: () => Navigator.of(context).pushNamed("/grid"),
                ),
                ListTile(
                  title: const Text("Flow"),
                  onTap: () => Navigator.of(context).pushNamed("/flow"),
                ),
                ListTile(
                  title: const Text("Layout Builder"),
                  onTap: () => Navigator.of(context).pushNamed("/builder"),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

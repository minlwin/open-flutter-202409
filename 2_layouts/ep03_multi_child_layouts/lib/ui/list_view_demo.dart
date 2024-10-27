import 'package:ep03_multi_child_layouts/common/demo_page.dart';
import 'package:flutter/material.dart';

class ListViewDemo extends StatelessWidget {
  final list = [
    "Java Basic",
    "Spring Framework",
    "Type Script",
    "React",
    "Dart Language",
    "Flutter for Mobile"
  ];
  ListViewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return DemoPage(
      title: "List View",
      child: ListView.separated(
        itemCount: list.length,
        separatorBuilder: (context, index) => const Divider(),
        itemBuilder: (context, index) => ListTile(
          leading: CircleAvatar(child: Text(index.increment().toString())),
          title: Text(list[index]),
        ),
      ),
    );
  }
}

extension on int {
  int increment() {
    return this + 1;
  }
}

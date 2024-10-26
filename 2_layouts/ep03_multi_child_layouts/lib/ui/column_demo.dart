import 'package:ep03_multi_child_layouts/common/demo_page.dart';
import 'package:flutter/material.dart';

class ColumnDemo extends StatelessWidget {
  const ColumnDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return const DemoPage(
      title: "Column Layout",
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(width: 100, height: 100, child: Placeholder()),
            SizedBox(width: 150, height: 100, child: Placeholder()),
            SizedBox(width: 200, height: 100, child: Placeholder()),
            SizedBox(width: 250, height: 100, child: Placeholder()),
            Expanded(
                child: SizedBox(width: 300, height: 100, child: Placeholder())),
          ],
        ),
      ),
    );
  }
}

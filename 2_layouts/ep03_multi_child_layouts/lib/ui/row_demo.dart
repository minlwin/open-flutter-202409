import 'package:ep03_multi_child_layouts/common/demo_page.dart';
import 'package:flutter/material.dart';

class RowDemo extends StatelessWidget {
  const RowDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return const DemoPage(
      title: "Row Widget",
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
              child: SizedBox(height: 100, width: 100, child: Placeholder())),
          Expanded(
              child: SizedBox(height: 200, width: 100, child: Placeholder())),
          Expanded(
              child: SizedBox(height: 300, width: 100, child: Placeholder())),
          Expanded(
              child: SizedBox(height: 400, width: 100, child: Placeholder())),
          Expanded(
              child: SizedBox(height: 500, width: 100, child: Placeholder())),
        ],
      ),
    );
  }
}

import 'package:ep03_multi_child_layouts/common/demo_page.dart';
import 'package:flutter/material.dart';

class StackDemo extends StatelessWidget {
  const StackDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return DemoPage(
      title: "Stack Layout",
      child: SizedBox(
        height: double.infinity,
        child: Stack(
          alignment: AlignmentDirectional.topStart,
          children: [
            Container(
              height: 200,
              color: Colors.blue,
            ),
            Baseline(
              baseline: 180,
              baselineType: TextBaseline.alphabetic,
              child: Container(
                alignment: Alignment.bottomRight,
                padding: const EdgeInsets.all(16),
                child: Text(
                  "Hello Flutter",
                  style: Theme.of(context)
                      .textTheme
                      .headlineLarge
                      ?.copyWith(color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100, left: 20),
              child: ClipOval(
                child: Image.network(
                    height: 160,
                    width: 160,
                    "https://pics.craiyon.com/2023-10-07/aa159aef2f074a259232a290748da0aa.webp"),
              ),
            )
          ],
        ),
      ),
    );
  }
}

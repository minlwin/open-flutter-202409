import 'package:flutter/material.dart';

class LimitedBoxView extends StatelessWidget {
  const LimitedBoxView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Limited Box")),
      body: Column(
        children: [
          LimitedBox(
            maxHeight: 200,
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
              child: Container(
                color: Colors.blue,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: LimitedBox(
                      maxHeight: 100,
                      maxWidth: 100,
                      child: Container(color: Colors.red),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: LimitedBox(
                      maxHeight: 100,
                      maxWidth: 100,
                      child: Container(color: Colors.red),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: LimitedBox(
                      maxHeight: 100,
                      maxWidth: 100,
                      child: Container(color: Colors.red),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: LimitedBox(
                      maxHeight: 100,
                      maxWidth: 100,
                      child: Container(color: Colors.red),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: LimitedBox(
                      maxHeight: 100,
                      maxWidth: 100,
                      child: Container(color: Colors.red),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: LimitedBox(
                      maxHeight: 100,
                      maxWidth: 100,
                      child: Container(color: Colors.red),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

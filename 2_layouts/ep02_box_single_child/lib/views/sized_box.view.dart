import 'package:flutter/material.dart';

class SizedBoxView extends StatelessWidget {
  const SizedBoxView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sized Box"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox.square(
              dimension: 200,
              child: FlutterLogo(),
            ),
            const SizedBox(height: 40),
            SizedBox(
              height: 60,
              width: 240,
              child: ElevatedButton.icon(
                onPressed: () {},
                label: const Text("Press Me"),
                icon: const Icon(Icons.thumb_up),
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ConstraintBoxView extends StatelessWidget {
  const ConstraintBoxView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Constraint Box")),
      body: Center(
        child: Column(
          children: [
            const Image(
              image: NetworkImage(
                  "https://t3.ftcdn.net/jpg/02/43/25/90/360_F_243259090_crbVsAqKF3PC2jk2eKiUwZHBPH8Q6y9Y.jpg"),
            ),
            const SizedBox(height: 16),
            ConstrainedBox(
              constraints: const BoxConstraints(minWidth: 340, maxWidth: 340),
              child: Text(
                "Beautiful beach with palms and turquoise sea in Jamaica island.",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            const SizedBox(height: 16),
            ConstrainedBox(
              constraints: const BoxConstraints(
                  minWidth: 340, maxWidth: 340, minHeight: 60),
              child: FilledButton(
                  onPressed: () {},
                  style: const ButtonStyle(
                      shape: WidgetStatePropertyAll(BeveledRectangleBorder())),
                  child: const Text(
                    "Plan to Go",
                    style: TextStyle(fontSize: 24),
                  )),
            )
          ],
        ),
      ),
    );
  }
}

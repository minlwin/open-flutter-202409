import 'package:flutter/material.dart';

class HelloWorldView extends StatelessWidget {
  const HelloWorldView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello World"),
        leading: const Icon(Icons.person_outline),
        actions: [
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Pressing Setting Action")));
            },
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: const HelloWorldBody(),
    );
  }
}

class HelloWorldBody extends StatelessWidget {
  const HelloWorldBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Hello World",
            style: TextStyle(fontSize: 40),
          ),
          Text(
            "Open Flutter",
            style: TextStyle(fontSize: 40),
          ),
        ],
      ),
    );
  }
}

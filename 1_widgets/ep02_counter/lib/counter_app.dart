import 'package:flutter/material.dart';

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
          image: const AssetImage("images/cover_image.png"),
          width: double.infinity,
          height: MediaQuery.of(context).size.height / 5 * 2,
          fit: BoxFit.cover,
        ),
        const Expanded(child: CounterWidget())
      ],
    );
  }
}

class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key});

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  var _count = 0;

  countUp() {
    setState(() {
      _count++;
    });
  }

  countDown() {
    setState(() {
      _count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Stateful Widget",
          style: TextStyle(fontSize: 24),
        ),
        const SizedBox(height: 18),
        Text(
          "Count is $_count",
          style: const TextStyle(fontSize: 42),
        ),
        SizedBox(height: MediaQuery.of(context).size.height / 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 160,
              child: ElevatedButton(
                onPressed: countDown,
                child: const Text("Count Down"),
              ),
            ),
            const SizedBox(width: 8),
            SizedBox(
              width: 160,
              child: ElevatedButton(
                onPressed: countUp,
                child: const Text("Count Up"),
              ),
            ),
          ],
        )
      ],
    );
  }
}

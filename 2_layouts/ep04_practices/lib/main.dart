import 'package:flutter/material.dart';

void main(List<String> args) => runApp(const LayoutApplication());

class LayoutApplication extends StatelessWidget {
  const LayoutApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.home),
          title: const Text("Layout"),
        ),
        body: Center(
          child: Column(
            children: [
              Image.asset(
                "images/beach.jpg",
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.height / 3,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 24, horizontal: 36),
                child: Column(
                  children: [
                    HeadingWidget(),
                    IconButtonsWidget(),
                    Text(
                        "Long before Hollywood put it on the tourist map (first with \"South Pacific\" in 1958, then with \"The Descendants\" in 2011), Kauai's Hanalei Bay attracted locals for its near-mystical beauty. Its beaches — Wai'oli, Hanalei Pavilion, and Black Pot — are framed by jade-colored mountains rising more than 4,000 feet high. The area is especially popular with surfers in the winter when the waves pick up size and speed."),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class IconButtonsWidget extends StatelessWidget {
  const IconButtonsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: Icons.phone,
            label: "CALL",
          ),
          IconButton(
            icon: Icons.route,
            label: "ROUTE",
          ),
          IconButton(
            icon: Icons.share,
            label: "SHARE",
          ),
        ],
      ),
    );
  }
}

class IconButton extends StatelessWidget {
  final IconData icon;
  final String label;
  const IconButton({
    super.key,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon),
        const SizedBox(height: 8),
        Text(label),
      ],
    );
  }
}

class HeadingWidget extends StatelessWidget {
  const HeadingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hanalei Bay, Hawaii",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const Text(
              "Beautiful Beach in US",
              style: TextStyle(color: Colors.blueGrey),
            ),
          ],
        ),
        const Row(
          children: [
            Icon(Icons.star),
            SizedBox(
              width: 8,
            ),
            Text("45"),
          ],
        )
      ],
    );
  }
}

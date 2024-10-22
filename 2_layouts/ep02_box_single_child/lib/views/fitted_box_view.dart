import 'package:flutter/material.dart';

class FittedBoxView extends StatelessWidget {
  const FittedBoxView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Fitted Box")),
      body: SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height / 2,
          child: FittedBox(
            fit: BoxFit.cover,
            alignment: Alignment.centerLeft,
            child: Image.network(
              "https://ychef.files.bbci.co.uk/1280x720/p0jgl914.jpg",
            ),
          )),
    );
  }
}

import 'package:ep03_multi_child_layouts/common/demo_page.dart';
import 'package:flutter/material.dart';

class IndexStackDemo extends StatefulWidget {
  const IndexStackDemo({super.key});

  @override
  State<IndexStackDemo> createState() => _IndexStackDemoState();
}

class _IndexStackDemoState extends State<IndexStackDemo> {
  var _index = 0;

  @override
  Widget build(BuildContext context) {
    return DemoPage(
      title: "Indexed Stack",
      child: Center(
        child: Column(
          children: [
            IndexedStack(
              index: _index,
              children: [
                _getImage(
                    "https://static.vecteezy.com/system/resources/thumbnails/036/011/252/small/ai-generated-extreme-motorbike-racing-concept-on-an-urban-race-track-area-photo.jpg"),
                _getImage(
                    "https://img.freepik.com/premium-photo/modern-futuristic-sports-motorcycle-ai-image_526489-31679.jpg"),
                _getImage(
                    "https://t4.ftcdn.net/jpg/07/52/02/57/360_F_752025788_AS7GNybZZ1coruggq2vUlIOdJqgqG1Xi.jpg"),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                      child: ElevatedButton(
                          onPressed: () {
                            _setImage(0);
                          },
                          child: const Text("Image 1"))),
                  const SizedBox(width: 8),
                  Expanded(
                      child: ElevatedButton(
                          onPressed: () {
                            _setImage(1);
                          },
                          child: const Text("Image 2"))),
                  const SizedBox(width: 8),
                  Expanded(
                      child: ElevatedButton(
                          onPressed: () {
                            _setImage(2);
                          },
                          child: const Text("Image 3"))),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  _setImage(int index) {
    setState(() {
      _index = index;
    });
  }

  Widget _getImage(String src) {
    return Image.network(
      width: double.infinity,
      height: 400,
      fit: BoxFit.cover,
      src,
    );
  }
}

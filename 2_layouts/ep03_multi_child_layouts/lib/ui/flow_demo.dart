import 'package:ep03_multi_child_layouts/common/demo_page.dart';
import 'package:flutter/material.dart';

class FlowDemo extends StatelessWidget {
  const FlowDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return DemoPage(
      title: "Flow Layout",
      child: Flow(
        delegate: CustomFlowDelegate(),
        children: [
          _getItem(Icons.cloud),
          _getItem(Icons.camera_alt),
          _getItem(Icons.send)
        ],
      ),
    );
  }

  Widget _getItem(IconData icon) {
    return CircleAvatar(
      radius: 40,
      child: Icon(
        icon,
        size: 40,
      ),
    );
  }
}

class CustomFlowDelegate extends FlowDelegate {
  @override
  void paintChildren(FlowPaintingContext context) {
    var dy = 0.0;
    var dx = 0.0;

    for (var i = 0; i < context.childCount; i++) {
      if (i > 0) {
        dx += context.getChildSize(i)!.width;
        dy += context.getChildSize(i)!.height;
      }

      context.paintChild(i, transform: Matrix4.translationValues(dx, dy, 0));
    }
  }

  @override
  bool shouldRepaint(covariant FlowDelegate oldDelegate) {
    return true;
  }
}

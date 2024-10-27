import 'package:ep03_multi_child_layouts/common/demo_page.dart';
import 'package:flutter/material.dart';

class GridViewDemo extends StatelessWidget {
  final list = [
    "https://educationalvoice.co.uk/wp-content/uploads/2024/05/Default_Careers_in_Animation_1.jpg",
    "https://static01.nyt.com/images/2016/06/10/arts/television/coraline-watching-recommendation-LN/coraline-watching-recommendation-superJumbo.jpg",
    "https://www.maacindia.com/_next/image?url=https%3A%2F%2Fmaacindia-public-aptech.s3.ap-south-1.amazonaws.com%2FmaacWebsite%2Fbanner%2FBanner-Bg-%25281%25291707741577537.png&w=3840&q=75",
    "https://www.moople.in/blog/wp-content/uploads/2023/10/animation-courses-scope-03-10-2023.jpg",
    "https://img.freepik.com/free-photo/portrait-young-student-education-day_23-2150980069.jpg",
    "https://akm-img-a-in.tosshub.com/indiatoday/images/story/202012/dancing-dave-minion-510835_128_1200x768.jpeg?size=690:388"
  ];
  GridViewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return DemoPage(
      title: "Grid View",
      child: GridView.builder(
        itemCount: list.length,
        padding: const EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
        itemBuilder: (context, index) => _getItem(index),
      ),
    );
  }

  Widget _getItem(int index) {
    return Image.network(
      fit: BoxFit.cover,
      list[index],
    );
  }
}

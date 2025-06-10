import 'package:flutter/material.dart';

class ChildTwo extends StatelessWidget {
  const ChildTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      //ctrl + . de? goi cai widget nay thanh 1 widget column
      children: [
        Image.asset(
          "assets/images/flutter_icon.png",
          height: 100,
        ), // còn 1 cách nữa là image.network xong bỏ url hình vô là xong
        SizedBox(height: 20),
        Text("Developed by Thong Dang"),
      ],
    );
  }
}

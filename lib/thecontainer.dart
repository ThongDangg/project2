import 'package:flutter/material.dart';
import 'package:project2/child_one.dart';
import 'package:project2/child_three.dart';
import 'package:project2/child_two.dart';

class TheContainer extends StatelessWidget {
  const TheContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: EdgeInsets.all(10), //khoảng cách nội dung trong khối
      //margin thì khoảng cách của khối này với khối khác
      padding: EdgeInsets.all(20),
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(color: Colors.blue[50]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [ChildOne(), ChildTwo(), ChildThree()],
      ), //ở container có thể có 1 child nhưng column thì sẽ có nhiều child
    );
  }
}

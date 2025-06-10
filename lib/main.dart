import 'package:flutter/material.dart';

import 'package:project2/thecontainer.dart';

void main() {
  runApp(const MyApp());
}

//Custom Widget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //Khi extends phải có override
  @override
  Widget build(BuildContext context) {
    //thg build context này như là 1 vị trí của widget hiện tại trên cây widget và phải trả về 1 widget (vd MaterialApp)
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "SFProText",
      ), // Đây là cái chỗ để fontfam cho cả trang
      home: Scaffold(
        // cho dễ hiểu thì mấy cái màu cam ta sẽ gọi là arguments
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          centerTitle: true,
          foregroundColor: Colors.white, //này là text color nha
          title: Text(
            "Hello Flutter",
            style: TextStyle(
              fontFamily: "SFProDisplay",
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: TheContainer(),
      ),
    );
  }
}

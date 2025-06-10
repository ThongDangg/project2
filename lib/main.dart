import 'package:flutter/material.dart';

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
      home: Scaffold(
        // cho dễ hiểu thì mấy cái màu cam ta sẽ gọi là arguments
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          centerTitle: true,
          foregroundColor: Colors.white, //này là text color nha
          title: Text("Hello Flutter"),
        ),
        body: Container(
          //padding: EdgeInsets.all(10), //khoảng cách nội dung trong khối
          //margin thì khoảng cách của khối này với khối khác
          padding: EdgeInsets.all(20),
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(color: Colors.blue[50]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Welcome to Hello Flutter App",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),

              Column(
                //ctrl + . de? goi cai widget nay thanh 1 widget column
                children: [
                  Image.asset("assets/images/flutter_icon.png"),
                  SizedBox(height: 20),
                  Text(
                    "Developed by Thong Dang",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(bottom: 10),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                ),

                child: Row(
                  children: [
                    Text("Du ma", style: TextStyle(color: Colors.white)),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Alex Bristol",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Flutter Developer",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          "www.alexbristol.com",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ), //ở container có thể có 1 child nhưng column thì sẽ có nhiều child
        ),
      ),
    );
  }
}

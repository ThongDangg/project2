import 'package:flutter/material.dart';

class ChildThree extends StatelessWidget {
  const ChildThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(bottom: 10),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(25),
      ),

      child: Row(
        children: [
          Image.asset("assets/images/weetie.jpg", height: 80),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Jesse Pinkman",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 3),
              Text("Flutter Developer", style: TextStyle(color: Colors.white)),
              SizedBox(height: 3),

              Text("www.heisenberg.com", style: TextStyle(color: Colors.white)),
            ],
          ),
        ],
      ),
    );
  }
}

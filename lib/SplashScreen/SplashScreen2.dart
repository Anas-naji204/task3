import 'package:cofeeapp/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Splashscreen2 extends StatelessWidget {
  const Splashscreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:Scaffold(
      backgroundColor: Colors.brown.shade50,

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
        Image.asset("asset/Image/IMG-20241117-WA0018.jpg"),
            SizedBox(height: 20),

            Text("Stay Energized",
          style: TextStyle(fontSize: 30,
              color: Colors.black,
              fontWeight: FontWeight.bold),
        ),
            SizedBox(height: 30),
            Center(child: Text("Discover your perfect brew to keep you sharp")),
        Center(child: Text(" and energized.Explore our menu with a variety")),
        Center(child: Text("of coff option.")),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    color: Colors.brown,
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
          SizedBox(height: 20,),
            SizedBox(width: 160,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Homepage()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.brown,
                  ),
                  child: Row(children: [
                    Center(
                      child: Text(
                        "Dive In",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Icon(
                      Icons.arrow_forward_outlined,
                      size: 15,
                      color: Colors.white,
                    ),
                  ]
                  ),
                ),
            ),



            ],
        ),
      ),
    )
    );
  }
}

import 'package:cofeeapp/SplashScreen/SplashScreen2.dart';
import 'package:flutter/material.dart';

class Splashscreen1 extends StatelessWidget {
  const Splashscreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.brown.shade50,
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Image.asset("asset/Image/IMG-20241117-WA0020.jpg"),
              SizedBox(height: 20),
              Text(
                "Stay Focused",
                style: TextStyle(fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30),
              Center(child: Text("Get the cup filled of your choice to stay")),
              Center(child: Text("focused and awake. Different type of coffee")),
              Center(child: Text("menu, hot latte cappuccino")),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      color: Colors.brown,
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              SizedBox(width: 160,
                child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Splashscreen2()));
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
      ),
    );
  }
}

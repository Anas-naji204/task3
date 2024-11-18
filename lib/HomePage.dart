import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var coffeInput = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.apps_rounded, color: Colors.brown),
                  Icon(Icons.person)
                ],
              ),
              SizedBox(height: 40),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Find the best",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Coffee to your taste",
                  style: TextStyle(fontSize: 25),
                ),
              ),
              SizedBox(height: 60),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      controller: coffeInput,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "يجب ايجاد القهوة";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: "Find Your Coffee..",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.8),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Icon(Icons.flip_to_back_sharp, color: Colors.brown,size: 45,),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

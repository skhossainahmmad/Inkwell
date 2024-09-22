import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "inkwell",
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0), // Set the height of the AppBar
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(35),
              bottomLeft: Radius.circular(35),
            ),
            color: Colors.blue, // AppBar background color
            border: Border(
              bottom: BorderSide(
                color: Colors.amber, // Border color
                width: 4.0, // Border width
              ),
            ),
          ),
          child: SafeArea(
            child: Center(
              child: Text(
                'Inkwell',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                print("Text");
              },
              child: Text(
                "Click Me",
                style: TextStyle(
                  color: Colors.pink,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Divider(
              color: Colors.deepPurple,
              height: 20,
              thickness: 12,
              indent: 500,
              endIndent: 500,
            ),
            SizedBox(
              height: 20,
            ),
            Material(
              surfaceTintColor: Colors.amber,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                bottomRight: Radius.circular(35),
              ),
              color: Colors.blueGrey,
              child: InkWell(
                onTap: () {
                  print("InkWell");
                },
                splashColor: Colors.blue,
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      // borderRadius: BorderRadius.only(
                      //  topLeft: Radius.circular(35),
                      //  bottomRight: Radius.circular(35)),
                      ),
                  width: 200,
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.lock),
                      Text(
                        "Open lock",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                print("GestureDetector");
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  //borderRadius: BorderRadius.circular(20),
                  shape: BoxShape.circle,
                ),
                height: 100,
                width: 150,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

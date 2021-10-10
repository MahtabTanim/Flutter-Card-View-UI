import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: height / 3,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(70)),
              color: Colors.blueAccent,
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 80,
                  left: 0,
                  child: Container(
                    width: 270,
                    height: 80,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(100),
                            bottomRight: Radius.circular(100))),
                  ),
                ),
                const Positioned(
                  top: 100,
                  left: 25,
                  child: Text(
                    "Your Books",
                    style: TextStyle(fontSize: 30, color: Colors.blue),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
              height: 200,
              child: Stack(
                children: [
                  Positioned(
                    top: 20,
                    left: 20,
                    child: Material(
                      child: Container(
                        height: 160,
                        width: width * 0.9,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(0)),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  offset: new Offset(-10.0, 10.0),
                                  blurRadius: 20,
                                  spreadRadius: 4.0)
                            ]),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 25,
                    height: 180,
                    width: width * 0.4,
                    child: Card(
                      elevation: 10.0,
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/img/1.jpg"),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  blurRadius: 5,
                                  spreadRadius: 2,
                                  offset: new Offset(-5, 5))
                            ]),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 35,
                    left: 200,
                    child: Container(
                      height: 120,
                      width: 120,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Big Miracle",
                            style: TextStyle(
                                color: Color(0xFF363f93),
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Mahtab Tanim",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                          Divider(
                            color: Colors.black,
                          ),
                          Text(
                            "It's larger than life",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )),
          Expanded(
              child: MediaQuery.removePadding(
            removeTop: true,
            context: context,
            child: ListView(
              children: [
                Container(
                  height: 130,
                  margin:
                      const EdgeInsets.only(bottom: 10, left: 30, right: 25),
                  padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                  decoration: BoxDecoration(
                      color: Color(0xFF363f93),
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(80),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFF363f93).withOpacity(0.3),
                          offset: Offset(-10, 0.0),
                          blurRadius: 20,
                          spreadRadius: 2,
                        )
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "The Best",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "Your Life starts here",
                        style: TextStyle(
                            color: Colors.white.withOpacity(1),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 130,
                  margin:
                      const EdgeInsets.only(bottom: 10, left: 30, right: 25),
                  padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                  decoration: BoxDecoration(
                      color: Color(0xFF363f93),
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(80),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFF363f93).withOpacity(0.3),
                          offset: Offset(-10, 0.0),
                          blurRadius: 20,
                          spreadRadius: 2,
                        )
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "The Best",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "Your Life starts here",
                        style: TextStyle(
                            color: Colors.white.withOpacity(1),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}

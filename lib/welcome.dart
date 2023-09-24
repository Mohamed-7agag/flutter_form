// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sort_child_properties_last, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Welcome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              Positioned(
                child: Image.asset(
                  "assets/images/main_top.png",
                  width: 100,
                ),
                top: 0,
                left: 0,
              ),
              Positioned(
                child: Image.asset(
                  "assets/images/main_bottom.png",
                  width: 85,
                ),
                bottom: 0,
                left: 0,
              ),
              Center(
                child: Container(
                  child: Column(
                    children: [
                      Text(
                        "Welcome To EDU",
                        style: TextStyle(
                            fontFamily: "myfont",
                            fontSize: 25,
                            color: Colors.purple),
                      ),
                      Container(
                        width: double.infinity,
                        height: 340,
                        child: SvgPicture.asset("assets/icons/chat.svg"),
                        margin: EdgeInsets.fromLTRB(0, 35, 0, 30),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/Login");
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(
                            fontFamily: "myfont",
                            fontSize: 28,
                            letterSpacing: 1.5,
                          ),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.purple[600]),
                          padding: MaterialStateProperty.all(
                            EdgeInsets.fromLTRB(110, 10, 110, 10),
                          ),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40))),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/Signup");
                        },
                        child: Text(
                          "SignUp",
                          style: TextStyle(
                            fontFamily: "myfont",
                            fontSize: 28,
                            letterSpacing: 1.5,
                          ),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.purple[200]),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.black),
                          padding: MaterialStateProperty.all(
                            EdgeInsets.fromLTRB(102, 10, 102, 10),
                          ),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40))),
                        ),
                      ),
                    ],
                  ),
                  height: double.infinity,
                  margin: EdgeInsets.only(top: 45),
                  // color: Colors.blue[100],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

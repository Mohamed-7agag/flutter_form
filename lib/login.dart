// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sort_child_properties_last, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

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
      home: Login(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Login extends StatelessWidget {
  const Login({super.key});

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
                  width: 115,
                ),
                top: 0,
                left: 0,
              ),
              Positioned(
                child: Image.asset(
                  "assets/images/login_bottom.png",
                  width: 120,
                ),
                bottom: 0,
                right: 0,
              ),
              Center(
                child: Container(
                  child: Column(
                    children: [
                      Text(
                        "Login",
                        style: TextStyle(
                            fontFamily: "myfont",
                            fontSize: 30,
                            color: Colors.purple),
                      ),
                      Container(
                        width: double.infinity,
                        height: 290,
                        child: SvgPicture.asset("assets/icons/login.svg"),
                        margin: EdgeInsets.fromLTRB(0, 20, 0, 30),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.purple[100],
                          borderRadius: BorderRadius.circular(35),
                        ),
                        width: 330,
                        height: 55,
                        child: TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.person,
                                color: Colors.purple[500],
                              ),
                              hintText: "Your Email",
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(35),
                              )),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.purple[100],
                          borderRadius: BorderRadius.circular(35),
                        ),
                        width: 330,
                        height: 55,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          obscureText: true,
                          decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Colors.purple[500],
                              ),
                              suffixIcon: Icon(
                                Icons.visibility,
                                color: Colors.purple[500],
                              ),
                              hintText: "Password",
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(35),
                              )),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {},
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
                            EdgeInsets.fromLTRB(127, 10, 127, 10),
                          ),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40))),
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Text(
                              "You Don't Have An Acoount?  ",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.purple[500],
                              ),
                            ),
                            GestureDetector(
                              child: Text(
                                "SignUp",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              onTap: () {
                                Navigator.pushNamed(context, "/Signup");
                              },
                            )
                          ],
                          mainAxisAlignment: MainAxisAlignment.center,
                        ),
                        margin: EdgeInsets.only(top: 20),
                      )
                    ],
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                  ),
                  margin: EdgeInsets.only(top: 25),
                  height: double.infinity,
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

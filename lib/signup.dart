// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sort_child_properties_last, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, deprecated_member_use

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
      home: Signup(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Signup extends StatelessWidget {
  const Signup({super.key});

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
                  "assets/images/signup_top.png",
                  width: 115,
                ),
                top: 0,
                left: 0,
              ),
              Positioned(
                child: Image.asset(
                  "assets/images/main_bottom.png",
                  width: 65,
                ),
                bottom: 0,
                left: 0,
              ),
              Center(
                child: Container(
                  child: Column(
                    children: [
                      Text(
                        "Sign Up",
                        style: TextStyle(
                            fontFamily: "myfont",
                            fontSize: 30,
                            color: Colors.purple),
                      ),
                      Container(
                        width: double.infinity,
                        height: 280,
                        child: SvgPicture.asset("assets/icons/signup.svg"),
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
                          "SignUp",
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
                            EdgeInsets.fromLTRB(121, 10, 121, 10),
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
                              "Already Have An Account?  ",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.purple[500],
                              ),
                            ),
                            GestureDetector(
                              child: Text(
                                "Login",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              onTap: () {
                                Navigator.pushNamed(context, "/Login");
                              },
                            )
                          ],
                          mainAxisAlignment: MainAxisAlignment.center,
                        ),
                        margin: EdgeInsets.fromLTRB(0, 20, 0, 10),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Divider(
                              thickness: 1.5,
                              color: Colors.purple[700],
                              indent: 50,
                            ),
                          ),
                          Text(
                            "OR",
                            style:
                                TextStyle(color: Colors.purple, fontSize: 16),
                          ),
                          Expanded(
                            child: Divider(
                              thickness: 1.5,
                              color: Colors.purple[700],
                              endIndent: 50,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.purple),
                                shape: BoxShape.circle),
                            child: SvgPicture.asset(
                              "assets/icons/facebook.svg",
                              color: Colors.purple,
                              height: 27,
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.purple),
                                shape: BoxShape.circle),
                            child: SvgPicture.asset(
                              "assets/icons/google-plus.svg",
                              color: Colors.purple,
                              height: 27,
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.purple),
                                shape: BoxShape.circle),
                            child: SvgPicture.asset(
                              "assets/icons/twitter.svg",
                              color: Colors.purple,
                              height: 27,
                            ),
                          ),
                        ],
                      )
                    ],
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                  ),
                  margin: EdgeInsets.only(top: 20),
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

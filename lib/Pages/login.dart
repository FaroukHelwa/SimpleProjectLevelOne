// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


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
              Container(
                width: double.infinity,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 35,
                      ),
                      Text(
                        "Login",
                        style: TextStyle(fontSize: 33, fontFamily: "faroukFont"),
                      ),
                      SizedBox(
                        height: 22,
                      ),
                      SvgPicture.asset(
                        "assets/icons/login.svg",
                        width: 288,
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Container(
                  decoration: BoxDecoration(
                    color: Colors.purple[100],
                    borderRadius: BorderRadius.circular(66),
                  ),
                  width: 266,
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: TextField(
                    decoration: InputDecoration(
                        icon: Icon(
                          Icons.person,
                          color: Colors.purple[800],
                        ),
                        hintText: "Your Email :",
                        border: InputBorder.none),
                  ),
                                ),
                                SizedBox(
                  height: 23,
                                ),
                                Container(
                  decoration: BoxDecoration(
                    color: Colors.purple[100],
                    borderRadius: BorderRadius.circular(66),
                  ),
                  width: 266,
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        suffix: Icon(
                          Icons.visibility,
                          color: Colors.purple[900],
                        ),
                        icon: Icon(
                          Icons.lock,
                          color: Colors.purple[800],
                          size: 19,
                        ),
                        hintText: "Password :",
                        border: InputBorder.none),
                  ),
                                ),
                                SizedBox(
                  height: 17,
                                ),
                                ElevatedButton(
                  onPressed: () {},
                  
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.purple),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(horizontal: 106, vertical: 10)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(27))),
                  ),
                  child: Text(
                    "login",
                    style: TextStyle(fontSize: 24 , color: Colors.white),
                  ),
                                ),
                                SizedBox(
                  height: 17,
                                ),
                                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don`t have an account?  "),
                    GestureDetector(
                      onTap: () {
                                Navigator.pushNamed(context, "/signup");
                              },
                      child: Text("SignUP" , style: TextStyle(fontWeight:FontWeight.w500 ,decoration: TextDecoration.underline),)
                      )
                  ],
                                )
                    ],
                  ),
                ),
              ),
              Positioned(
                child: Image.asset(
                  "assets/images/main_top.png",
                  width: 130,
                ),
                top: 0,
                left: 0,
              ),
              Positioned(
                child: Image.asset(
                  "assets/images/login_bottom.png",
                  width: 130,
                ),
                bottom: 0,
                right: 0,
              ),
            ],
          ),
        ),
      ),
    );
  
  }
}
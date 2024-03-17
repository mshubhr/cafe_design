// ignore_for_file: file_names, non_constant_identifier_names, sized_box_for_whitespace

import 'dart:ui';
import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:cafe_design/HomePage/home_page.dart';

Positioned CenterWidget(double height, double width, BuildContext context) {
  return Positioned(
      left: 30,
      top: 100,
      child: Container(
        height: height - 200,
        width: width - 60,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: BackdropFilter(
            filter: ImageFilter.blur(
                sigmaX: 8.0,
                sigmaY:
                    8.0), // Adjust the sigmaX and sigmaY values for the blur effect
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.05),
              ),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 4.6, horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("assets/ALLAssets/Logo.png"),
                    const Text("Swift",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 60,
                            fontWeight: FontWeight.w300)),
                    const Text("Café",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                            fontWeight: FontWeight.w200)),
                    const Text("'Latte but never late'",
                        style: TextStyle(color: Colors.grey, fontSize: 11)),
                    const TextField(
                      decoration: InputDecoration(
                          hintStyle: TextStyle(
                              color: Colors.white54,
                              fontWeight: FontWeight.w200),
                          hintText: "User Name"),
                    ),
                    const TextField(
                      decoration: InputDecoration(
                          hintStyle: TextStyle(
                              color: Colors.white54,
                              fontWeight: FontWeight.w200),
                          hintText: "Password"),
                    ),
                    SizedBox(
                      height: height * 0.08,
                    ),
                    GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage())),
                      child: Container(
                        height: 50,
                        width: width - 80,
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.3),
                                  offset: const Offset(2, 2),
                                  spreadRadius: -2,
                                  blurRadius: 15)
                            ],
                            gradient: const LinearGradient(colors: [
                              Color.fromRGBO(77, 43, 26, 1),
                              Color.fromRGBO(167, 116, 90, 1)
                            ])),
                        child: const Text(
                          "Login",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    Container(
                      height: 50,
                      width: width - 80,
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: Colors.white, width: 0.5)),
                      child: const Text(
                        "Signup",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    const Text("Privacy Policy",
                        style: TextStyle(color: Colors.grey, fontSize: 11)),
                  ],
                ),
              ),
            ),
          ),
        ),
      ));
}

// ignore_for_file: sized_box_for_whitespace, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:cafe_design/InsideInstant/Instant.dart';

GestureDetector InstantCard(double height, double width, BuildContext context) {
  return GestureDetector(
    onTap: () => Navigator.push(context,
        MaterialPageRoute(builder: (context) => const InsideInstant())),
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
        color: Colors.white38,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            offset: const Offset(0, 4),
            blurRadius: 4,
            spreadRadius: 0,
          ),
        ],
      ),
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      width: width - 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Lattè",
                  style: TextStyle(color: Colors.white54),
                ),
                Row(
                  children: [
                    const Text("4.9"),
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 15,
                    ),
                    const Text("(478)"),
                    Image.asset("assets/ALLAssets/Image.png")
                  ],
                ),
                Container(
                  width: width * 0.56,
                  child: const Text(
                    "Caffè latte is a milk coffee that is made up of one or two shots of espresso, steamed milk, and a final, thin layer of frothed milk on top.",
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: Colors.white54, fontSize: 11),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: height * 0.10,
            width: width * 0.2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              // Optionally, you can add a border to see the effect
            ),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    "assets/ALLAssets/Cup.png",
                    height: height * 0.10,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                    bottom: 0,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.green),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 5),
                      alignment: Alignment.center,
                      child: const Text(
                        "ADD",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                    ))
              ],
            ),
          )
        ],
      ),
    ),
  );
}

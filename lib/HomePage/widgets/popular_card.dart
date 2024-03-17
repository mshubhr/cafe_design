// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

Container PopularIcons(double width, double height, String assets) {
  return Container(
    margin: const EdgeInsets.only(right: 20),
    padding: const EdgeInsets.all(10),
    width: width * 0.4,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white.withOpacity(0.2)),
    height: height * 0.23,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Image.asset(
          assets,
          height: height * 0.14,
        ),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Hot Cappuccino",
                style: TextStyle(fontSize: 11, color: Colors.white38)),
            Text(
              "Expresso, Steamed Milk",
              style: TextStyle(fontSize: 11, color: Colors.black),
            ),
            Row(
              children: [
                Text(
                  "4.9",
                  style: TextStyle(fontSize: 12),
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 12,
                ),
                Text(
                  "(478)",
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          ],
        )
      ],
    ),
  );
}

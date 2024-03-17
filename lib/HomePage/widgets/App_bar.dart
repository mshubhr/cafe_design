// ignore_for_file: file_names, avoid_unnecessary_containers

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Container appBar(double height) {
  return Container(
    decoration: BoxDecoration(color: Colors.white.withOpacity(0.1)),
    height: height * 0.22,
    padding: const EdgeInsets.only(left: 20, right: 20, top: 35.9, bottom: 30),
    child: Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset("assets/ALLAssets/waving-hand-sign_1f44b.png"),
            const Row(
              children: [
                Column(
                  children: [
                    Text(
                      "20/12/2022",
                      style: TextStyle(color: Colors.white60),
                    ),
                    Text(
                      "Joshua Scanlan",
                      style: TextStyle(color: Colors.white60),
                    )
                  ],
                ),
              ],
            ),
            Container(
              child: Row(
                children: [
                  const Icon(
                    Icons.delete,
                    color: Colors.white,
                    size: 25,
                  ),
                  Image.asset("assets/ALLAssets/avatar.png")
                ],
              ),
            )
          ],
        ),
        SizedBox(
          height: height * 0.03,
        ),
        const CupertinoSearchTextField(
          backgroundColor: Colors.white,
          placeholder: "Search favourite Beverages",
        )
      ],
    ),
  );
}

import 'package:flutter/material.dart';
Widget imageShow(String img) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 25, right: 10),
        child: Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(img),
                // Pass the correct image path
                fit: BoxFit.cover,
              ),
              color: Colors.blue,
              shape: BoxShape.circle),
        ),
      ),
    ],
  );
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/home_page_provider.dart';

Widget BoxCounterMala(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(top: 710, left: 7, right: 5),
    child: Align(
      alignment: Alignment.bottomLeft,
      child: Row(
        children: [
          Container(
            height: 130,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white10,
              boxShadow: const [
                BoxShadow(
                    color: Colors.black12, spreadRadius: 10, blurRadius: 15)
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    '‣ Mala Count : 108 x 12',
                    style: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w600),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    '‣ Current Count : 118',
                    style: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w600),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    '‣ Total Count : 650',
                    style: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Container(
            height: 130,
            width: 172,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white10,
              boxShadow: const [
                BoxShadow(
                    color: Colors.black12, spreadRadius: 10, blurRadius: 15),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 70, left: 10),
              child: IconButton(
                  onPressed: () {
                    Provider.of<HomeProvider>(context, listen: false)
                        .resetCount();
                  },
                  icon: Icon(
                    Icons.restart_alt_outlined,
                    size: 40,
                    color: Colors.white,
                  )),
            ),
          ),
        ],
      ),
    ),
  );
}

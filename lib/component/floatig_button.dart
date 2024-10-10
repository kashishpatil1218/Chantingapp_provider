import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/home_page_provider.dart';
import '../utils/global.dart';
import 'image_button.dart';

Widget FloatingButtons(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      FloatingActionButton(
        backgroundColor: Colors.orange.shade400,
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => Dialog(
              child: Container(
                height: 120,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ...List.generate(
                        imagList.length,
                            (index) => GestureDetector(
                          onTap: () {
                            Provider.of<HomeProvider>(context,
                                listen: false)
                                .updateImage(imagList[index]);
                            Navigator.of(context).pop();
                          },
                          child: imageShow(imagList[index]),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
        child: const Icon(
          Icons.image_outlined,
          color: Colors.white,
        ),
      ),
      const SizedBox(
        width: 10,
      ),
      FloatingActionButton(
        backgroundColor: Colors.orange.shade400,
        onPressed: () {
          Provider.of<HomeProvider>(context, listen: false).deletCount();
        },
        child: Icon(
          Icons.remove,
          color: Colors.white,
        ),
      ),
      SizedBox(width: 10,),

    ],
  );
}


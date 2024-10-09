import 'package:adv_chanting_counter_app/provider/home_page_provider.dart';
import 'package:adv_chanting_counter_app/utils/global.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../component/image_button.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.purple,
      //   title: const Text(
      //     'Chanting App',
      //     style: TextStyle(color: Colors.white, fontSize: 20),
      //   ),
      // ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/img/mh1.jpg'),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Consumer<HomeProvider>(
                builder: (context, provider, child) => Stack(
                  children: [
                    Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                          color: Colors.black45,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12,
                                spreadRadius: 5,
                                blurRadius: 15)
                          ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 45, left: 50),
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade800,
                                  spreadRadius: 2,
                                  blurRadius: 21)
                            ]),
                        child: Center(
                          child: Text(
                            provider.counter.toString(),
                            style: const TextStyle(
                                color: Colors.white, fontSize: 50),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
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
              Provider.of<HomeProvider>(context, listen: false).updateCounter();
            },
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

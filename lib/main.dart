import 'package:adv_chanting_counter_app/provider/home_page_provider.dart';
import 'package:adv_chanting_counter_app/screens/homepage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const ChantingApp());
}

class ChantingApp extends StatelessWidget {
  const ChantingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) =>HomeProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Homepage(),
      ),
    );
  }
}


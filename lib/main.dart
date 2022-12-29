// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:twitter_clone/products/views/navbar.dart';

// TODO: MVVM architecture öğren.
// Neden kullandığını ne işe yaradığını (çok önemli)

// TODO: basic git komutlarını öğren (çok önemli)
// git push,git commit vs.
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavBarPageView(),
    );
  }
}
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:unama_maps/pages/contact_page.dart';
import 'package:unama_maps/pages/map_3d.dart';
import 'package:unama_maps/pages/home_page.dart';
import 'package:unama_maps/pages/map_2d.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Unama Maps",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            useMaterial3: true,
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.green)),
        home: const HomePage());
  }
}

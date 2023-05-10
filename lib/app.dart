// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:unama_maps/pages/home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Unama Maps",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
        colorScheme: ColorScheme.fromSeed(
            seedColor: Color.fromARGB(255, 104, 207, 173),
            brightness: Brightness.light),
      ),
      home: const HomePage(),
    );
  }
}

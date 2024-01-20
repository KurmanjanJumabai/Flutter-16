import 'package:flutter/material.dart';
import 'package:sabak_20_capital_of_the_world_ui_2/features/repositories/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 5, 1, 12)),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

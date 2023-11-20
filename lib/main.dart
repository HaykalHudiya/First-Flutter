import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Aplication Agent List'),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 17, 17, 17),
        ),
        body: HomePage(),
      ),
    );
  }
}

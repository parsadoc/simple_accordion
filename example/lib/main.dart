import 'package:flutter/material.dart';
import 'package:simple_accordion/simple_accordion.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Simple Accordion'),
          ),
          body: SimpleAccordion()),
    );
  }
}

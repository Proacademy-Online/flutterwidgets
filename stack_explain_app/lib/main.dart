import 'package:flutter/material.dart';
import 'package:stack_explain_app/index_stack_explain.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stack Explain App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const IndexStackExplained(),
    );
  }
}

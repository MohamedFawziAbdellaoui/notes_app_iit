import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        backgroundColor: const Color(0xff252525),
        appBar: AppBar(
          backgroundColor: const Color(0xff252525),
          title: const Text(
            "Notes",
            style: TextStyle(
              color: Colors.white,
              fontSize: 43,
              fontWeight: FontWeight.w600, //semi bold

            ),
          ),
          actions: [
            
          ],
        ),
      ),
    );
  }
}

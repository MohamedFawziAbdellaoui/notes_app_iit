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
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.info,
                color: Colors.white,
              ),
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'images/rafiki.png',
              ),
              const Text('Create your first note',
                  style: TextStyle(
                    color: Colors.white,
                  )),
              const Text('Create your first note',
                  style: TextStyle(
                    color: Colors.white,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:notes_app/screens/add_note_screen.dart';
import 'package:notes_app/screens/home_screen.dart';

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
      routes: {
        HomeScreen.id: (context) => const HomeScreen(),
        AddNoteScreen.id: (context) => const AddNoteScreen(
              isNewNote: false,
            ),
      },
      initialRoute: HomeScreen.id,
    );
  }
}

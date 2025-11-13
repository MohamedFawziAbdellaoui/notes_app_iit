import 'package:flutter/material.dart';
import 'package:notes_app/screens/add_note_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const String id = 'HomeScreen';
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      floatingActionButton: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, AddNoteScreen.id);
          },
          icon: const Icon(
            Icons.add,
            color: Colors.white,
          )),
    );
  }
}

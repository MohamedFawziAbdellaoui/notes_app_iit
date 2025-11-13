import 'package:flutter/material.dart';

class AddNoteScreen extends StatefulWidget {
  final String? noteTitle;
  final String? noteContent;
  final bool isNewNote;
  const AddNoteScreen({
    super.key,
    this.noteTitle,
    this.noteContent,
    required this.isNewNote,
  });
  static const String id = 'AddNoteScreen';
  @override
  State<AddNoteScreen> createState() => _AddNoteScreenState();
}

class _AddNoteScreenState extends State<AddNoteScreen> {
  TextEditingController _titleController = TextEditingController();
  TextEditingController _contentController = TextEditingController();
  bool isEditMode = false;

  @override
  void initState() {
    _titleController = TextEditingController(text: widget.noteTitle);
    _contentController = TextEditingController(text: widget.noteContent);
    isEditMode = widget.isNewNote;
    super.initState();
  }

  @override
  void dispose() {
    _titleController.dispose();
    _contentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff252525),
      appBar: AppBar(
        backgroundColor: const Color(0xff252525),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
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
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        child: Column(
          children: [
            TextField(
              enabled: isEditMode,
              controller: _titleController,
              decoration: const InputDecoration(
                hintText: 'title',
                hintStyle: TextStyle(
                  color: Color(0xff9A9A9A),
                  fontSize: 48,
                ),
                border: InputBorder.none,
              ),
              style: TextStyle(
                fontSize: 48,
                color: Colors.white,
              ),
              maxLines: null,
            ),
            TextField(
              enabled: isEditMode,
              controller: _contentController,
              decoration: InputDecoration(
                hintText: 'type something',
                hintStyle: TextStyle(
                  color: Color(0xff9A9A9A),
                  fontSize: 23,
                ),
                border: InputBorder.none,
              ),
              style: TextStyle(
                fontSize: 23,
                color: Colors.white,
              ),
              maxLines: null,
            ),
          ],
        ),
      ),
    );
  }
}

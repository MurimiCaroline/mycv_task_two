// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class EditPage extends StatefulWidget {
  final Function(String) updateName;
  final String currentName; // Pass the current name from HomePage

  const EditPage({super.key, required this.updateName, required this.currentName});

  @override
  _EditPageState createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  final TextEditingController nameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    nameController.text = widget.currentName; // Initialize the controller with the current name
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Name'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: nameController,
              decoration: const InputDecoration(labelText: 'Name'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                String editedName = nameController.text;
                if (editedName.isNotEmpty) {
                  widget.updateName(editedName);
                }
                Navigator.pop(context);
              },
              child: const Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class EditPage extends StatefulWidget {
  final Function(String) updateName;
  final String currentName;
  final Function(String) updateSlackName;
  final String currentSlackName;
  final Function(String) updateGithubHandle;
  final String currentGithubHandle;
  final Function(String) updatePersonalBio;
  final String currentPersonalBio;

  const EditPage({super.key,
    required this.updateName,
    required this.currentName,
    required this.updateSlackName,
    required this.currentSlackName,
    required this.updateGithubHandle,
    required this.currentGithubHandle,
    required this.updatePersonalBio,
    required this.currentPersonalBio,
  });

  @override
  _EditPageState createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController slackNameController = TextEditingController();
  final TextEditingController githubHandleController = TextEditingController();
  final TextEditingController personalBioController = TextEditingController();

  @override
  void initState() {
    super.initState();
    nameController.text = widget.currentName;
    slackNameController.text = widget.currentSlackName;
    githubHandleController.text = widget.currentGithubHandle;
    personalBioController.text = widget.currentPersonalBio;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit CV'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: nameController,
              decoration: const InputDecoration(labelText: 'Full Name'),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: slackNameController,
              decoration: const InputDecoration(labelText: 'Slack Name'),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: githubHandleController,
              decoration: const InputDecoration(labelText: 'GitHub Handle'),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: personalBioController,
              decoration: const InputDecoration(labelText: 'Personal Bio'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                String editedName = nameController.text;
                String editedSlackName = slackNameController.text;
                String editedGithubHandle = githubHandleController.text;
                String editedPersonalBio = personalBioController.text;

                if (editedName.isNotEmpty ||
                    editedSlackName.isNotEmpty ||
                    editedGithubHandle.isNotEmpty ||
                    editedPersonalBio.isNotEmpty) {
                  widget.updateName(editedName);
                  widget.updateSlackName(editedSlackName);
                  widget.updateGithubHandle(editedGithubHandle);
                  widget.updatePersonalBio(editedPersonalBio);
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


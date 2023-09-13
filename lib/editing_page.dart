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
  // Add content section fields and update functions
  final Function(String) updateEducation;
  final String currentEducation;
  final Function(String) updateExperience;
  final String currentExperience;
  final Function(String) updateProject;
  final String currentProject;
  final Function(String) updateSocialMedia;
  final String currentSocialMedia;

  const EditPage({
    super.key,
    required this.updateName,
    required this.currentName,
    required this.updateSlackName,
    required this.currentSlackName,
    required this.updateGithubHandle,
    required this.currentGithubHandle,
    required this.updatePersonalBio,
    required this.currentPersonalBio,
    // Add content section fields and update functions
    required this.updateEducation,
    required this.currentEducation,
    required this.updateExperience,
    required this.currentExperience,
    required this.updateProject,
    required this.currentProject,
    required this.updateSocialMedia,
    required this.currentSocialMedia,
  });

  @override
  _EditPageState createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController slackNameController = TextEditingController();
  final TextEditingController githubHandleController = TextEditingController();
  final TextEditingController personalBioController = TextEditingController();
  // Add controllers for content sections
  final TextEditingController educationController = TextEditingController();
  final TextEditingController experienceController = TextEditingController();
  final TextEditingController projectController = TextEditingController();
  final TextEditingController socialMediaController = TextEditingController();

  @override
  void initState() {
    super.initState();
    nameController.text = widget.currentName;
    slackNameController.text = widget.currentSlackName;
    githubHandleController.text = widget.currentGithubHandle;
    personalBioController.text = widget.currentPersonalBio;
    // Initialize controllers for content sections
    educationController.text = widget.currentEducation;
    experienceController.text = widget.currentExperience;
    projectController.text = widget.currentProject;
    socialMediaController.text = widget.currentSocialMedia;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit CV'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            child: Column(
              children: <Widget>[
                TextFormField(
                  keyboardType: TextInputType.name,
                  controller: nameController,
                  decoration: const InputDecoration(labelText: 'Full Name'),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  keyboardType: TextInputType.text,
                  controller: slackNameController,
                  decoration: const InputDecoration(labelText: 'Slack Name'),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  keyboardType: TextInputType.url,
                  controller: githubHandleController,
                  decoration: const InputDecoration(labelText: 'GitHub Handle'),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  maxLines: null,
                  controller: personalBioController,
                  decoration: const InputDecoration(labelText: 'Personal Bio'),
                ),
                // Add TextFormField for each content section
                const SizedBox(height: 20),
                TextFormField(
                  maxLines: null,
                  controller: educationController,
                  decoration: const InputDecoration(labelText: 'Education'),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  maxLines: null,
                  controller: experienceController,
                  decoration: const InputDecoration(labelText: 'Experience'),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  maxLines: null,
                  controller: projectController,
                  decoration: const InputDecoration(labelText: 'Project'),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  keyboardType: TextInputType.url,
                  controller: socialMediaController,
                  decoration: const InputDecoration(labelText: 'Social Media'),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    String editedName = nameController.text;
                    String editedSlackName = slackNameController.text;
                    String editedGithubHandle = githubHandleController.text;
                    String editedPersonalBio = personalBioController.text;
                    String editedEducation = educationController.text;
                    String editedExperience = experienceController.text;
                    String editedProject = projectController.text;
                    String editedSocialMedia = socialMediaController.text;

                    widget.updateName(editedName);
                    widget.updateSlackName(editedSlackName);
                    widget.updateGithubHandle(editedGithubHandle);
                    widget.updatePersonalBio(editedPersonalBio);

                    widget.updateEducation(editedEducation);
                    widget.updateExperience(editedExperience);
                    widget.updateProject(editedProject);
                    widget.updateSocialMedia(editedSocialMedia);

                    Navigator.pop(context);
                  },
                  child: const Text('Save'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

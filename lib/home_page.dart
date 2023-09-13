// ignore_for_file: library_private_types_in_public_api
import 'package:mycv_task_two/editing_page.dart';
import 'package:mycv_task_two/feautures.dart';

import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String fullName = 'Caroline Murimi';
  String slackName = 'Carole_Murimi';
  String githubHandle = 'https://github.com/MurimiCaroline';
  String personalBio = 'PersonalBio';
  String education = 'Your education details go here.';
  String experience = 'Your experience details go here.';
  String project = 'Your project details go here.';
  String socialMedia = 'Your social media links go here.';

  Color myColor = const Color.fromARGB(255, 216, 219, 221);

  void updateName(String newName) {
    setState(() {
      fullName = newName;
    });
  }

  void updateSlackName(String newSlackName) {
    setState(() {
      slackName = newSlackName;
    });
  }

  void updateGithubHandle(String newGithubHandle) {
    setState(() {
      githubHandle = newGithubHandle;
    });
  }

  void updatePersonalBio(String newPersonalBio) {
    setState(() {
      personalBio = newPersonalBio;
    });
  }

void updateEducation(String neweducation) {
    setState(() {
      education = neweducation;
    });
  }

  void updateProject (String newProject) {
    setState(() {
      personalBio = newProject;
    });
  }

  void updateExperience(String newexperience) {
    setState(() {
      experience = newexperience;
    });
  }

void updateSocialMedia  (String newsocialMedia) {
    setState(() {
      socialMedia = newsocialMedia;
    });
  }

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$fullName\'s CV'),
      ),
      body: Stack(
        children: [ 
          Positioned.fill(
            child: Image.asset(
              'images/homebg.jpg', 
              fit: BoxFit.cover,
            ),
          ),
                    Center(
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                decoration: BoxDecoration(
                  color: myColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      CustomRichText(
                        heading: 'Full name: ',
                        content: fullName,
                      ),
                      CustomRichText(
                        heading: 'Slack name: ',
                        content: slackName,
                      ),
                      CustomRichText(
                        heading: 'GitHub Handle: ',
                        content: githubHandle,
                      ),
                      
                      SizedBox(height: MediaQuery.sizeOf(context).height *0.05,),
                      // Add content sections
                      CustomListTile(topic: 'Personal Bio', paragraph: education),
                      CustomListTile(topic: 'Education', paragraph: education),
                      CustomListTile(topic: 'Experience', paragraph: experience),
                      CustomListTile(topic: 'Project', paragraph: project),
                      CustomListTile(topic: 'Social Media', paragraph: socialMedia),
                  
                      SizedBox(height: MediaQuery.of(context).size.height * 0.08,),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => EditPage(
                                updateName: updateName,
                                currentName: fullName,
                                updateSlackName: updateSlackName,
                                currentSlackName: slackName,
                                updateGithubHandle: updateGithubHandle,
                                currentGithubHandle: githubHandle,
                                updatePersonalBio: updatePersonalBio,
                                currentPersonalBio: personalBio,
                                // Pass content sections to EditPage
                                updateEducation: updateEducation,
                                currentEducation: education,
                                updateExperience: updateExperience,
                                currentExperience: experience,
                                updateProject: updateProject,
                                currentProject: project,
                                updateSocialMedia: updateSocialMedia,
                                currentSocialMedia: socialMedia,
                              ),
                            ),
                          );
                        },
                        child: const Text('Edit CV'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        ]
      ),
    );
  }
}










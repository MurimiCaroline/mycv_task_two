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
  String personalBio = """I am Caroline, a passionate tech enthusiast on an exciting journey through the world of Electrical and Electronics Engineering.
   With an insatiable curiosity for all things tech-related, I'm constantly exploring the ever-evolving landscape of electronics and electrical systems. 
    Beyond the world of circuits and coding, I'm also fluent in French, which opens doors to a rich and diverse cultural perspective.""" ;
  String education = """" Primary - Kenya Certificate of Primary Education.
  High School - Kenya Cerificate of SecondaryEducation.
  University - Currently in my Undergraduate""";
  String experience = """Intern at KPLC. 
Intern at BnB Electrix""";
  String project = 'I have worked on several projects and the major one is https://github.com/MurimiCaroline/book_spa.';
  String socialMedia = 'https://linktr.ee/murimicaroline';

  Color myColor = const Color.fromARGB(255, 216, 219, 221);

  void updateName(String newName) {
    setState(() {
      
       if (newName.isEmpty) {
       fullName= "not added";
      } else {
       fullName = newName;
      }
    });
  }

  void updateSlackName(String newSlackName) {
    setState(() {
     
       if (newSlackName.isEmpty) {
      slackName = "not added";
      } else {
        slackName = newSlackName;
      }
    });
  }

  void updateGithubHandle(String newGithubHandle) {
    setState(() {
      
       if (newGithubHandle.isEmpty) {
       githubHandle= "not added";
      } else {
       githubHandle = newGithubHandle;
      }
    });
  }

  void updatePersonalBio(String newPersonalBio) {
    setState(() {
     
       if (newPersonalBio.isEmpty) {
       personalBio = "not added";
      } else {
        personalBio = newPersonalBio;
      }
    });
  }

  void updateEducation(String neweducation) {
    setState(() {
      
       if (neweducation.isEmpty) {
       education = "not added";
      } else {
       education = neweducation;
      }
      
    });
  }

  void updateProject(String newProject) {
    setState(() {
      
       if (newProject.isEmpty) {
       project = "not added";
      } else {
       project = newProject;
      }
    });
  }

  void updateExperience(String newexperience) {
    setState(() {
      if (newexperience.isEmpty) {
        experience = "not added";
      } else {
        experience = newexperience;
      }
    });
  }

  void updateSocialMedia(String newsocialMedia) {
    setState(() {
      if (newsocialMedia.isEmpty) {
        socialMedia = "not added";
      } else {
        socialMedia = newsocialMedia;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$fullName\'s CV'),
      ),
      body: Stack(children: [
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
                     

                      SizedBox(
                        height: MediaQuery.sizeOf(context).height * 0.02,
                      ),
                      CustomListTile(topic: 'Github Handle', paragraph: githubHandle),
                      CustomListTile(
                          topic: 'Personal Bio', paragraph: personalBio),
                      CustomListTile(topic: 'Education', paragraph: education),
                      CustomListTile(
                          topic: 'Experience', paragraph: experience),
                      CustomListTile(topic: 'Project', paragraph: project),
                      CustomListTile(
                          topic: 'Social Media', paragraph: socialMedia),

                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.08,
                      ),
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
      ]),
    );
  }
}

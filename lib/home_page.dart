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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$fullName\'s CV'),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.pink[100],
            borderRadius: BorderRadius.circular(40)
          ),
          height: MediaQuery.sizeOf(context).height*0.85,
          width: MediaQuery.sizeOf(context).width *0.75,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
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
                CustomRichText(
                  heading: 'Personal Bio: ',
                  content: personalBio,
                ),
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
    );
  }
}










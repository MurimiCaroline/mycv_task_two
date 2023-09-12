// ignore_for_file: library_private_types_in_public_api
import 'package:mycv_task_two/editing_page.dart';
import 'package:mycv_task_two/feautures.dart';

import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String fullName = 'Zeop';
   

  void updateName(String newName) {
    setState(() {
      fullName = newName;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('$fullName\'s CV'), // Set the title dynamically
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomRichText(
        heading: 'Full name: ',
        content: fullName,
            ),
            SizedBox(height: MediaQuery.sizeOf(context).height * 0.08,),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EditPage(
                      updateName: updateName,
                      currentName: fullName,
                    ),
                  ),
                );
              },
              child: const Text('Edit CV'),
            ),
        ]

        ),
      ),
        );

  }
}



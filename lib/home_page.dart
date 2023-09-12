// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:mycv_task_two/editing_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String name = 'Your Name';


  void updateName(String newName) {
    setState(() {
      name = newName;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$name\'s CV'), // Set the title dynamically
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RichText(
              text: TextSpan(
                // First TextSpan with a different style
                children: <TextSpan>[
                  const TextSpan(
                    text: 'Name: ',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                  TextSpan(
                    text: name,
                    style: const TextStyle(
                      color: Colors.blue,
                      fontStyle: FontStyle.italic,
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: MediaQuery.sizeOf(context).height * 0.8,),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EditPage(
                      updateName: updateName,
                      currentName: name,
                    ),
                  ),
                );
              },
              child: const Text('Edit CV'),
            ),
          ],
        ),
      ),
    );
  }
}

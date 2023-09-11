import 'package:flutter/material.dart';
import 'package:mycv_task_two/editing_page.dart';
import 'package:mycv_task_two/feautures.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 30,),
           const MyCv(
             Name: 'Caroline',
           ),
           const SizedBox(height: 10,),
            CustomButton(
                here: 'Edit Page',
                onPressed: () {
                  Navigator.push(
             context,
             MaterialPageRoute(builder: (context) => const EditPage()),
                  );
                },
              ),
          ],
        ),
      ),
    );
  }
}
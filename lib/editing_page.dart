import 'package:flutter/material.dart';
import 'package:mycv_task_two/feautures.dart';

class EditPage extends StatefulWidget {
  const EditPage({super.key});

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cee'),
      ),
      body: const MyCv(
        Name: 'Caroline',
      ),
    );
  }
}
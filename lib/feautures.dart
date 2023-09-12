import 'package:flutter/material.dart';
import 'package:mycv_task_two/home_page.dart';
import 'package:mycv_task_two/editing_page.dart';

class CustomButton extends StatelessWidget {
  final String here;
  final VoidCallback onPressed;
  const CustomButton(
      {super.key, required this.here, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text("Press the below button to go to $here"),
      ElevatedButton(
        style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.blueGrey)),
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text("Pressed to go to $here"),
              duration: const Duration(seconds: 1),
            ),
          );
          onPressed();
        },
        child: Text(' $here'),
      )
    ]));
  }
}




class CustomRichText extends StatelessWidget{
 final String heading;
 final String content;
  const CustomRichText (
{super.key, required this.heading, required this.content});

  @override
  Widget build(BuildContext context){
    return RichText(
      text: TextSpan(
          children: <TextSpan>[
            TextSpan (
              text: heading,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
            TextSpan(
              text: content,
              style: const TextStyle(
                color: Colors.blue,
                fontStyle: FontStyle.normal,
                fontSize: 20.0,
              ),
            ),
          ]
      ),
    );
  }

  }

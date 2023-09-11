import 'package:flutter/material.dart';

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


class MyCv extends StatelessWidget {
  final String Name;
 const MyCv(
      {super.key, required this.Name,});
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text('$Name'),
        );
  }
}
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
                color: Colors.black,
                fontStyle: FontStyle.normal,
                fontSize: 20.0,
              ),
            ),
          ]
      ),
    );
  }

  }

class CustomListTile extends StatelessWidget{
 final String topic;
 final String paragraph;
  const CustomListTile (
{super.key, required this.topic, required this.paragraph});

  @override
  Widget build(BuildContext context){
     
    return ListTile(
      title: Text(topic,
      style: const TextStyle(
        backgroundColor: Color.fromARGB(255, 209, 223, 235),
        color: Colors.black87,
        fontWeight: FontWeight.bold,
        fontSize: 25,
      ),
      ),
      subtitle: Text(paragraph,
      style: const TextStyle(
        fontWeight: FontWeight.normal,
        fontSize: 15,
      ),
      ),

    );
  }
}


class CustomTextFormFieldii extends StatelessWidget{
 final String controller;
 final String tag;
  const CustomTextFormFieldii(
{super.key, required this.controller, required this.tag});

  @override
  Widget build(BuildContext context){
    return TextFormField(
      keyboardType: TextInputType.multiline,
      maxLines: null,
          decoration: InputDecoration(labelText: tag),
    );
  }
}

customIf(String newpara, String para) {
  if (newpara.isEmpty) {
    para = "not added";
  } else {
    para = newpara;
  }
} 

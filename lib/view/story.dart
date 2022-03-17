import 'package:flutter/material.dart';

class  Story extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Column(
          children: [
            TextButton(
              onPressed: () {
                print('Show the story');
              }, //Show the story
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Colors.black),
              ),

              child: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(
                      'images/instagrambackground.jpg'),
                  child: CircleAvatar(
                      radius: 27,
                      backgroundColor: Colors.black,
                      child: CircleAvatar(
                        radius: 24,
                        backgroundImage:
                        AssetImage('icons/icon1.png'),
                      ))),
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              'memes',
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
        SizedBox(
          width: 20,
        ),
      ],
    );
  }
}

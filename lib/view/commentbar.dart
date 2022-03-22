import 'package:flutter/material.dart';

class Commentbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        ElevatedButton.icon(
          onPressed: () {
            print('Open commenting');
          },
          style: ElevatedButton.styleFrom(primary: Colors.black),
          icon: CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage('icons/icon2.jpg'),
          ),
          label: Text('Add a comment...',
              style: TextStyle(color: Colors.grey, fontSize: 17)),
        ),
        SizedBox(width: 50),
        IconButton(
            onPressed: () {
              print('add heart icon to comment');
            },
            icon: Icon(Icons.favorite, color: Colors.red, size: 20)),
        IconButton(
            onPressed: () {
              print('add handshake  icon to comment');
            },
            icon: Icon(Icons.handshake_rounded,
                color: Color(0xFFcb8442), size: 20)),
        IconButton(
            onPressed: () {
              print('add comment');
            },
            icon: Icon(Icons.add_circle_outline,
                color: Colors.white, size: 20)),
      ],
    );
  }
}

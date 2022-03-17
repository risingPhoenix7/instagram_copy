import 'package:flutter/material.dart';

class InstaAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      foregroundColor: Colors.white,
      backgroundColor: Colors.black,
      title: Text(
        'Instakilogram',
        style: TextStyle(
          fontSize: 37,
          fontFamily: 'Satisfy',
        ),
      ),
      actions: <Widget>[
        IconButton(
          onPressed: () {
            print('add a story');
          },
          icon: Icon(Icons.add_box_outlined),
        ),
        IconButton(
            onPressed: () {
              print('open messenger');
            },
            icon: Image.asset(
              'icons/messengerr.jpg',
              height: 30,
              width: 30,
            )),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

}

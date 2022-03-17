import 'package:flutter/material.dart';
import 'package:instagram_copy/icon/icons.dart';
import 'package:instagram_copy/view/reactions.dart';

import 'commentbar.dart';

class Post extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(children: <Widget>[
            ElevatedButton.icon(
              onPressed: () {
                print('Open the profile');
              },
              style: ElevatedButton.styleFrom(primary: Colors.black),
              icon: IconWithBg(),
              label: Text('memes',
                  style: TextStyle(color: Colors.white, fontSize: 20)),
            ),
            SizedBox(
              width: 220,
            ),
            IconButton(
              onPressed: () {
                print('more options');
              },
              icon: Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
            )
          ]),

//Actual post

          Image.asset(
            'images/memes.png',
          ),
//Next row contains all possible reactions to the post
          Reactions(),
//no. of likes
          Text('  1,16,360 likes',
              style: TextStyle(color: Colors.white, fontSize: 18)),
//poster's description
          Row(
            children: [
              Text('  memes',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18)),
              Text('  lol', style: TextStyle(color: Colors.white, fontSize: 18))
            ],
          ),
//button that shows comments
          TextButton(
            onPressed: () {
              print('View comments');
            },
            style: TextButton.styleFrom(
              fixedSize: Size.fromWidth(200),
            ),
            child: Text('View all 404 comments',
                style: TextStyle(color: Colors.grey, fontSize: 17)),
          ),
//User to comment here
          Commentbar(),
        ]
    );
  }
}
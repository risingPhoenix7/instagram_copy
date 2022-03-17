import 'package:flutter/material.dart';

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
              icon: CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage('images/instagrambackground.jpg'),
                  child: CircleAvatar(
                      radius: 17,
                      backgroundColor: Colors.black,
                      child: CircleAvatar(
                        radius: 14,
                        backgroundImage: AssetImage('icons/icon1.png'),
                      ))),
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
          Row(children: <Widget>[
            IconButton(
              icon: Icon(Icons.favorite_border_outlined,
                  color: Colors.white, size: 35),
              onPressed: () {
                print('Add to favourite');
              },
            ),
            IconButton(
              icon:
              Icon(Icons.comment_bank_outlined, color: Colors.white, size: 35),
              onPressed: () {
                print('Comment');
              },
            ),
            IconButton(
              icon: Icon(Icons.share, color: Colors.white, size: 35),
              onPressed: () {
                print('Share');
              },
            ),
            SizedBox(
              width: 210,
            ),
            IconButton(
              icon: Icon(Icons.bookmark_outline, color: Colors.white, size: 35),
              onPressed: () {
                print('Bookmark clicked');
              },
            )
          ]),
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
          Row(
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
          )
        ]);
  }
}

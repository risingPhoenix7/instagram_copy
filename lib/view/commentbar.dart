import 'package:flutter/material.dart';

class Commentbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      IconButton(
        icon:
            Icon(Icons.favorite_border_outlined, color: Colors.white, size: 35),
        onPressed: () {
          print('Add to favourite');
        },
      ),
      IconButton(
        icon: Icon(Icons.comment_bank_outlined, color: Colors.white, size: 35),
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
    ]);
  }
}

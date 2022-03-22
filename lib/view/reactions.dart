import 'package:flutter/material.dart';

class Reactions extends StatefulWidget {
  const Reactions({Key? key}) : super(key: key);

  @override
  State<Reactions> createState() => _ReactionsState();
}

class _ReactionsState extends State<Reactions> {
  bool faviconstate=true;
  bool bookiconstate=true;
  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      IconButton(
        icon:favIcon(),
        onPressed: () {
          setState(() {
            faviconstate=!faviconstate;
          });
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
        icon: bookIcon(),
        onPressed: () {
          print('Bookmark clicked');
          setState(() {
            bookiconstate=!bookiconstate;
          });
        },
      )
    ]);
  }

  favIcon() {
    if(faviconstate)
      {
        return Icon(Icons.favorite_border_outlined, color: Colors.white, size: 35);
      }
    else
      return Icon(Icons.favorite_outlined, color: Colors.pinkAccent, size: 35);
  }
  bookIcon() {
    if(bookiconstate)
    {
      return Icon(Icons.bookmark_outline, color: Colors.white, size: 35);
    }
    else
      return Icon(Icons.bookmark_outlined, color: Colors.blue, size: 35);
  }

}


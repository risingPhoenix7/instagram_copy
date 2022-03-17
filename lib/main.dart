import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

//to create this type stless and itll autofill, just type the name and put the class name as home:classname() in main, return scaffold
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

//override meaning is that build over here overrides the build defined in parent class Stateless Widget
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: true,
        bottom: false,
        child: Scaffold(
          backgroundColor: Colors.black,
          //Title, add button and messenger in AppBar
          appBar: AppBar(
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
          ),
          //for scrolling wrap with this
          body: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
                    Widget>[
              SizedBox(height: 10),
              //First row containing stories
              Row(
                children: <Widget>[
                  Column(
                    children: [
                      TextButton(
                        onPressed: () {
                          print('Show the story');
                        }, //Show the story
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.black),
                        ),

                        child: CircleAvatar(
                            radius: 30,
                            backgroundImage:
                                AssetImage('images/instagrambackground.jpg'),
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
              ),
              SizedBox(
                height: 10,
              ),
              //First line of post, contains dp of poster, name and 3 dots
              Row(children: <Widget>[
                ElevatedButton.icon(
                  onPressed: () {
                    print('Open the profile');
                  },
                  style: ElevatedButton.styleFrom(primary: Colors.black),
                  icon: CircleAvatar(
                      radius: 20,
                      backgroundImage:
                          AssetImage('images/instagrambackground.jpg'),
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
                  icon: Icon(Icons.comment_bank_outlined,
                      color: Colors.white, size: 35),
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
                  icon: Icon(Icons.bookmark_outline,
                      color: Colors.white, size: 35),
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
                  Text('  lol',
                      style: TextStyle(color: Colors.white, fontSize: 18))
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
              ),
            ]),
          ),
          //Bottom navigationBar to contain 5 other windows
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            backgroundColor: Colors.black,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white,
            iconSize: 30,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: 'Search'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.video_library_outlined), label: 'Reels'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_border_outlined),
                  label: 'Activity'),
              BottomNavigationBarItem(
                  icon: CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('icons/icon2.jpg'),
                  ),
                  label: 'My profile'),
            ],
          ),
        ));

    //Scaffold is like a wrapper to lots of widgets like appBar.body.bottomNavigationBar
    //bottomSheet,drawer,;
  }
}

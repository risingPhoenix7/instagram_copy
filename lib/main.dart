import 'package:flutter/material.dart';
import 'package:instagram_copy/view/appbar.dart';
import 'package:instagram_copy/view/bottomnavigationbar.dart';
import 'package:instagram_copy/view/post.dart';
import 'package:instagram_copy/view/story.dart';

void main() {
  runApp(MaterialApp(home: Home(),));
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
          appBar: InstaAppBar(),
          //for scrolling wrap with this
          body: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 10),
                  //First row containing stories
                  Story(),

                  SizedBox(height: 10,),
                  //post starts here
                  Post(),
                ]
            ),
          ),
          //Bottom navigationBar to contain 5 other windows
          bottomNavigationBar: BnBar(),
        )
    );

    //Scaffold is like a wrapper to lots of widgets like appBar.body.bottomNavigationBar
    //bottomSheet,drawer,;
  }
}

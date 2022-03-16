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
                onPressed: () {},
                icon: Icon(Icons.add_box_outlined),
              ),
              IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    'icons/messengerr.jpg',
                    height: 30,
                    width: 30,
                  )),
            ],
          ),
          body: Column(
            children: <Widget>[
              SizedBox(height: 25),
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
                            backgroundImage: NetworkImage(
                                'https://www.zilliondesigns.com/blog/wp-content/uploads/instagram.jpg'),
                            child: CircleAvatar(
                                radius: 27,
                                backgroundColor: Colors.black,
                                child: CircleAvatar(
                                  radius: 24,
                                  backgroundImage: NetworkImage(
                                      'https://styles.redditmedia.com/t5_12jk54/styles/profileIcon_snoo4a45a8a1-6897-429a-8046-f1d24899fe6f-headshot-f.png'),
                                ))),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        'Randodude',
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
              //First line of post
              Row(
                children:<Widget>[
                  ElevatedButton.icon(
                    onPressed: (){
                      print('Open the profile');
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black
                    ),
                    icon:CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage(
                            'https://www.zilliondesigns.com/blog/wp-content/uploads/instagram.jpg'),
                        child: CircleAvatar(
                            radius: 17,
                            backgroundColor: Colors.black,
                            child: CircleAvatar(
                              radius: 14,
                              backgroundImage: NetworkImage(
                                  'https://styles.redditmedia.com/t5_12jk54/styles/profileIcon_snoo4a45a8a1-6897-429a-8046-f1d24899fe6f-headshot-f.png'),
                            ))),
                    label:Text(
                        'memes',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20
                        )
                    ),


                  ),
                  SizedBox(
                    width: 220,
                  ),

                  IconButton(
                    onPressed: () {  },
                    icon: Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    ),



                  )



                ]

              ),


              //Actual post

                Image.asset(
                  'images/memess.png',
                    fit:BoxFit.fill

                ),




            ],
          ),

          ),

    );

    //Scaffold is like a wrapper to lots of widgets like appBar.body.bottomNavigationBar
    //bottomSheet,drawer,;
  }
}

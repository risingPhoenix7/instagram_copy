import 'package:flutter/material.dart';

class IconWithBg extends StatelessWidget {
  const IconWithBg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        radius: 20,
        backgroundImage: AssetImage('images/instagrambackground.jpg'),
        child: CircleAvatar(
            radius: 17,
            backgroundColor: Colors.black,
            child: CircleAvatar(
              radius: 14,
              backgroundImage: AssetImage('icons/icon1.png'),
            )));
  }
}

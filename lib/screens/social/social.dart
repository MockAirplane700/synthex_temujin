/*  This will be the social page showing posts from other users as motivation

 */

import 'package:flutter/material.dart';
import 'package:synthextemujin/shared/bottomNavigationBar.dart';

class Social extends StatefulWidget {
  @override
  _SocialState createState() => _SocialState();
}

class _SocialState extends State<Social> {

  Widget imagePost(String name) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Image.network("https://www.kindpng.com/picc/m/120-1203382_fitness-png-image-hd-exercise-png-transparent-png.png") ,

          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                  onPressed: null,
                  child: Icon(Icons.star)
              ),
              SizedBox(width: 5,),
              FlatButton(
                  onPressed: null,
                  child: Icon(Icons.comment)
              ),
              SizedBox(width: 5,),
              FlatButton(
                  onPressed: null,
                  child: Icon(Icons.share)
              ),
              SizedBox(width: 5,),
              FlatButton(
                  onPressed: () {
                    // Go to the respective User's profile
                  },
                  child: Icon(Icons.person)
              )
            ],
          )
        ],
      ),
    );
  }//end method

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(),
      body: Padding(padding: EdgeInsets.all(10), child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 20,),
            imagePost("name"),
          ],
        ),
      ),),
    );
  }
}

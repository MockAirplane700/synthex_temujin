/*  This will be the other's user profile from the pespective of the 
    final consumer or rather our users
 */

import 'package:flutter/material.dart';
import 'package:synthextemujin/shared/bottomNavigationBar.dart';

class UserProfileClient extends StatefulWidget {
  @override
  _UserProfileClientState createState() => _UserProfileClientState();
}

class _UserProfileClientState extends State<UserProfileClient> {

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
  }

  @override
  Widget build(BuildContext context) {
    String string = "Name: Denzel Lorem\nInstagram Handle: dennxy\nTwitter: lorem ipsum";
    String description = "fdu9gf udg irg  virg8 rig rgihrv8 rg 8rvrvrubvp eg vgur9 vv9 vb9v vrug rg r9rg vhvorhvrv 9rv r9gur9ug9r bv rg9r9gri rho ivgr o gor grg9r g  ryg9rugfif yg8fypfew 9f7 gt9vgd dig8wg9c";
    return Scaffold(
      bottomNavigationBar: NavigationBar(),
      body: Padding(padding: EdgeInsets.all(10), child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 10,),
            // The first row holds the profile picture and basic info
            Row(
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: NetworkImage("https://onlineprofilepros.com/wp-content/uploads/2015/07/sample-14-350x500.jpeg"),
                  radius: 50,
                ),
                SizedBox(width: 65,),
                Text(string, maxLines: 20,),
              ],
            ),
            SizedBox(height: 10,),
            Text(description,maxLines: 3,),
            SizedBox(height: 10,),
            imagePost("fdihf"),
            SizedBox(height: 5,),
            imagePost("gid"),
          ],
        ),
      ),),
    );
  }
}

/*  This will be the about page, holds informatoion about the startup

 */

import 'package:flutter/material.dart';
import 'package:synthextemujin/shared/bottomNavigationBar.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {

  String description = "Temujin was the name of the Great Mongol Emperor, Ghengis Khan According to a chronicle, his empire at onepoint covered more than half the world,larger than that of Alexander the Great.Temujin is literally translated, Our Vision, at Temujin Life, is tohave a positive impact in people'slifestyles, allowing them to experiencemental and physical invincibility, likebecoming the finest steel.";
  String profileDescript = "dufy g uvg g.....";

  Widget memberProfile(String name){
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            backgroundImage: NetworkImage("https://marathonelites.net/wp-content/uploads/2019/11/Abdu.jpg") ,
            radius: 30,
          ),
          SizedBox(width: 50,),
          Text(name + "\n" +profileDescript , maxLines: 5,),
          FlatButton(
              onPressed: () {
                //go to the respective member's profile
              },
              child: Text("View Profile")
          ),
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
          children: <Widget>[
            SizedBox(height: 10,),
            Image(
                image: AssetImage("images/temujinLogo.png")
            ),
            Text(description, maxLines: 10,),
            SizedBox(height: 20,),
            memberProfile("NAME"),
            SizedBox(height: 5,),
            memberProfile("NAME"),
            SizedBox(height: 5,),
            memberProfile("NAME"),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FlatButton(
                    onPressed: () {
                      //go to the DTFK page
                    },
                    child: Text("Our Social responsibility")
                )
              ],
            )

          ],
        ),
      ),),
    );
  }
}

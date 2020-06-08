/*  This page will hold life services information patterning to mental health
     and wellness
 */

import 'package:flutter/material.dart';
import 'package:synthextemujin/shared/bottomNavigationBar.dart';

class LifeServices extends StatefulWidget {
  @override
  _LifeServicesState createState() => _LifeServicesState();
}

class _LifeServicesState extends State<LifeServices> {
  
  Widget articleCard(String sourceImage, String title, String summary){
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(title),
          SizedBox(height: 10,),
          Container(
            child: Image.network(sourceImage),
          ),
          SizedBox(height: 5,),
          Text(summary,maxLines: 5,),
          FlatButton(
              onPressed: () {
                //open the article or video
              },
              child: Text("Open Article")
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
          children: <Widget>[
            SizedBox(height: 10,),
            Image(
                image: AssetImage("images/temujinLogo.png")
            ),
            SizedBox(height: 10,),
            articleCard("https://www.apa.org/images/2011-12-exercise_tcm7-127050.jpg", "Mental health", "Lorem ipsum dotem aeteroza aztek forth doth shakepsear fbud9w vy df v 9sug "),
            SizedBox(height: 5,),
            articleCard("https://www.apa.org/images/2011-12-exercise_tcm7-127050.jpg", "Couples health", "Lorem ipsum dotem aeteroza aztek forth doth shakepsear fbud9w vy df v 9sug ")
          ],
        ),
      ),),
    );
  }
}

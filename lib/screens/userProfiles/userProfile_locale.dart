/*  This is the user profile for the start page type thing, essentially this profile \
    holds an avatar to show what weight you want or you goal body size
 */

import 'package:flutter/material.dart';
import 'package:synthextemujin/shared/bottomNavigationBar.dart';

class UserProfileLocale extends StatefulWidget {
  @override
  _UserProfileLocaleState createState() => _UserProfileLocaleState();
}

class _UserProfileLocaleState extends State<UserProfileLocale> {
  String string = "Name: Tanyaradwa Mundopa\nAge: 25\nSex: Male\nIdentify As: Heterosexual Male\nProfile class: Executive\nInitial Weight: 80kg\nEnd weight: 65kg";

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight =  MediaQuery.of(context).size.height;
    return Scaffold(
      bottomNavigationBar: NavigationBar(),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(10.0), child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 10,),
              //Row is required for the avatar and the text output next to it
              Row(
                children: <Widget>[
                  Container(
                    child: Image.network("https://upload.wikimedia.org/wikipedia/en/5/55/Xbox_NXE_avatar.png"),
                  ),
                  SizedBox(width: 15,),
                  Text(string, maxLines: 20,),
                ],
              ),
              SizedBox(height: 10,),
              //the diet plans column that holds the diet plans in cards for the next 7 days
             Column(
                    children: <Widget>[
                      Card(
                        child: Row(
                          children: <Widget>[
                            Text("Monday"),
                            SizedBox(width: 10,),
                            Text("Core and Strength Training"),
                            SizedBox(width: screenWidth *0.10,),
                            RaisedButton(
                              child: Text("Lets go"),
                                onPressed: null
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Card(
                        child: Row(
                          children: <Widget>[
                            Text("Tuesday"),
                            SizedBox(width: 10,),
                            Text("lorem ipsum  Training"),
                            SizedBox(width: screenWidth*0.10,),
                            RaisedButton(
                                child: Text("Lets go"),
                                onPressed: null
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Card(
                        child: Row(
                          children: <Widget>[
                            Text("Wednesday"),
                            SizedBox(width: 10,),
                            Text("lorem ipsum Training"),
                            SizedBox(width: 10,),
                            RaisedButton(
                                child: Text("Lets go"),
                                onPressed: null
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Card(
                        child: Row(
                          children: <Widget>[
                            Text("Thursday"),
                            SizedBox(width: 10,),
                            Text("Core and Strength Training"),
                            SizedBox(width: 10,),
                            RaisedButton(
                                child: Text("Lets go"),
                                onPressed: null
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Card(
                        child: Row(
                          children: <Widget>[
                            Text("Friday"),
                            SizedBox(width: 10,),
                            Text("Core and Strength Training"),
                            SizedBox(width: 10,),
                            RaisedButton(
                                child: Text("Lets go"),
                                onPressed: null
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
            ],
          ),
        ),),
      ),
    );
  }
}

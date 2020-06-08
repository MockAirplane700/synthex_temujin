/*  The navigation bar for the app

 */

/*  This is going to be the app's bottom nav bar

 */
import 'package:flutter/material.dart';
import 'package:synthextemujin/screens/about/about.dart';
import 'package:synthextemujin/screens/lifeServices/lifeServices.dart';
import 'package:synthextemujin/screens/social/social.dart';
import 'package:synthextemujin/screens/userProfiles/userProfile_locale.dart';

class NavigationBar extends StatefulWidget {

  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  int _selectedIndex = 0;

  static const TextStyle optionsStyle = TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold
  );

  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionsStyle,
    ),
    Text(
      'Index 1: About',
      style: optionsStyle,
    ),
    Text(
      'Index 2: Life Services',
      style: optionsStyle,
    ),
    Text(
      'Index 3: Social'
    )
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;

      if(_selectedIndex == 0) {
        //go to the home page
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => UserProfileLocale(),
                settings: RouteSettings(
                    arguments: _selectedIndex
                )
            )
        );
      } else if(_selectedIndex == 1){
        // go to the additions page
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => About(),
                settings: RouteSettings(
                    arguments: _selectedIndex
                )
            )
        );
      }else if (_selectedIndex ==2){
        //go to the last page
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => LifeServices(),
                settings: RouteSettings(
                    arguments: _selectedIndex
                )
            )
        );
      }else{
        Navigator.push(context,
            MaterialPageRoute(builder: (context) =>Social(),
                settings: RouteSettings(
                    arguments: _selectedIndex
                )
            )
        );
      }//end if-else
    });
  }
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showUnselectedLabels:true ,
      type:BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home')
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.info),
            title: Text("About")
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.healing),
            title: Text("Life Services")
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.people),
            title: Text("Social")
        )
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.green[800],
      onTap: _onItemTapped,
    );
  }
}

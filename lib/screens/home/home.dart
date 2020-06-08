/*  The home screen of the app, the first screen the user sees

 */

import 'package:flutter/material.dart';
import 'package:synthextemujin/screens/userProfiles/userProfile_locale.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return UserProfileLocale();
  }
}

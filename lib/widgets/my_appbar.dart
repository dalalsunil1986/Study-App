import 'package:flutter/material.dart';
import 'package:study/constants.dart';

AppBar homeAppBar({@required String title}) {
  return AppBar(
    title: Text(title, style: TextStyle(color: kBlackColor)),
    bottom: PreferredSize(
      child: Container(
        color: kPrimaryColor,
        height: 2.0,
      ),
      preferredSize: Size.fromHeight(2.0),
    ),
  );
}

AppBar defaultAppBar({@required String title, @required BuildContext context}) {
  return AppBar(
    title: Text(title, style: TextStyle(color: kBlackColor)),
    leading: IconButton(
      padding: EdgeInsets.all(0),
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        Navigator.pop(context);
      },
    ),
    actions: <Widget>[
      IconButton(icon: Icon(Icons.search), onPressed: () {}),
    ],
    bottom: PreferredSize(
      child: Container(
        color: kPrimaryColor,
        height: 2.0,
      ),
      preferredSize: Size.fromHeight(2.0),
    ),
  );
}

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

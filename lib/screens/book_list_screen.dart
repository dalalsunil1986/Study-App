import 'package:flutter/material.dart';
import 'package:study/ui/sizeInfo.dart';
import 'package:study/ui/ui_utils.dart';
import 'package:study/widgets/my_appbar.dart';

class BookListScreen extends StatefulWidget {
  @override
  _BookListScreenState createState() => _BookListScreenState();
}

class _BookListScreenState extends State<BookListScreen> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return LayoutBuilder(
      builder: (context, boxSizing) {
        var sizingInformation = SizingInformation(
          orientation: mediaQuery.orientation,
          deviceType: getDeviceType(mediaQuery),
          screenSize: mediaQuery.size,
          localWidgetSize: Size(boxSizing.maxHeight, boxSizing.maxWidth),
        );
        return SafeArea(
          child: Scaffold(
            appBar: homeAppBar(title: "Book Name"),
            
          ),
        );
      },
    );
  }
}

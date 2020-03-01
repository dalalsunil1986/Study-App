import 'package:flutter/material.dart';
import 'package:study/constants.dart';
import 'package:study/ui/sizeInfo.dart';
import 'package:study/ui/ui_utils.dart';
import 'package:study/widgets/drawer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kBackgoundColor,
        appBarTheme: AppBarTheme(
          color: kWhitColor,
          iconTheme: IconThemeData(color: kBlackColor),
        ),
        textTheme: TextTheme(
          title: kSnigletFont,
          headline: kSnigletFont,
          // subhead: kSnigletFont,
        ),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
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
            appBar: AppBar(
              title: Text("Solution", style: TextStyle(color: kBlackColor)),
              bottom: PreferredSize(
                child: Container(
                  color: kPrimaryColor,
                  height: 2.0,
                ),
                preferredSize: Size.fromHeight(2.0),
              ),
            ),
            drawer: MyDrawer(),
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Recently Added Books",
                    style: Theme.of(context).textTheme.title,
                  ),
                  SizedBox(
                    height: sizingInformation.screenSize.height * .02,
                  ),
                  Container(
                    height: sizingInformation.screenSize.height * .15,
                    child: Row(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(
                            sizingInformation.screenSize.width * .03,
                          ),
                          width: sizingInformation.screenSize.width * .67,
                          color: kWhitColor,
                          child: Row(
                            children: <Widget>[
                              Image.network(
                                "https://cs.cheggcdn.com/covers2/29180000/29182981_1375631097_Width200.jpg",
                                fit: BoxFit.cover,
                                width: sizingInformation.screenSize.width * .18,
                              ),
                              Column(
                                children: <Widget>[
                                  Container(
                                    // margin: EdgeInsets.only(right: 15),
                                    padding: EdgeInsets.only(
                                      left: sizingInformation.screenSize.width *
                                          .04,
                                    ),
                                    width: sizingInformation.screenSize.width *
                                        .42,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          "Fundamentals of Electric Circuits",
                                          style:
                                              Theme.of(context).textTheme.title,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "Charles K. Alexander, Mathew N. O. Sadiku, Charles K. Alexander",
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: Theme.of(context)
                                              .textTheme
                                              .caption,
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

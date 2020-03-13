import 'package:flutter/material.dart';
import 'package:study/constants.dart';
import 'package:study/screens/chapter_screen.dart';

import 'package:study/widgets/book_list_card.dart';
import 'package:study/widgets/drawer.dart';
import 'package:study/widgets/my_appbar.dart';

class BookListhScreen extends StatefulWidget {
  @override
  _BookListhScreenState createState() => _BookListhScreenState();
}

class _BookListhScreenState extends State<BookListhScreen> {
  int perPage = 10;
  int present = 0;
  List<String> originalItems = List<String>.generate(10000, (i) => "Item $i");
  List<String> items = List<String>();

  @override
  void initState() {
    super.initState();
    setState(() {
      items.addAll(originalItems.getRange(present, present + perPage));
      present = present + perPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, boxsizing) {
        return SafeArea(
          child: Scaffold(
            drawer: MyDrawer(),
            appBar: defaultAppBar(title: "List Of Books", context: context),
            body: Padding(
              padding: EdgeInsets.only(left: 16, right: 16, top: 16),
              child: ListView.builder(
                itemCount: (present <= originalItems.length)
                    ? items.length + 1
                    : items.length,
                itemBuilder: (context, index) {
                  return (index == items.length)
                      ? Padding(
                          padding: const EdgeInsets.only(bottom: 16),
                          child: RaisedButton(
                            color: kButtonColor,
                            textColor: kWhitColor,
                            child: Text("Load More"),
                            onPressed: () {
                              setState(() {
                                if ((present + perPage) >
                                    originalItems.length) {
                                  items.addAll(originalItems.getRange(
                                      present, originalItems.length));
                                } else {
                                  items.addAll(originalItems.getRange(
                                      present, present + perPage));
                                }
                                present = present + perPage;
                              });
                            },
                          ),
                        )
                      : Padding(
                          padding: const EdgeInsets.only(bottom: 16),
                          child: BookListCard(
                            press: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => BookDetailsScreen(),
                                ),
                              );
                            },
                            edition: 5,
                            auths:
                                "Charles K. Alexander, Mathew N. O. Sadiku, Charles K. Alexander",
                            name: "Fundamentals of Electric Circuits",
                            poster:
                                'https://cs.cheggcdn.com/covers2/29180000/29182981_1375631097_Width200.jpg',
                          ),
                        );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}

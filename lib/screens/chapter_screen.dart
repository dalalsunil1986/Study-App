import 'package:flutter/material.dart';
import 'package:study/constants.dart';
import 'package:study/screens/problem_screen.dart';
import 'package:study/widgets/details_card.dart';
import 'package:study/widgets/drawer.dart';
import 'package:study/widgets/my_appbar.dart';

class BookDetailsScreen extends StatefulWidget {
  @override
  _BookDetailsScreenState createState() => _BookDetailsScreenState();
}

class _BookDetailsScreenState extends State<BookDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar:
            defaultAppBar(title: "Name Of the book the book", context: context),
        drawer: MyDrawer(),
        body: Padding(
          padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
          child: Column(
            children: <Widget>[
              BookDetailsCard(
                edition: 5,
                auths:
                    "Charles K. Alexander, Mathew N. O. Sadiku, Charles K. Alexander",
                name: "Fundamentals of Electric Circuits",
                poster:
                    'https://cs.cheggcdn.com/covers2/29180000/29182981_1375631097_Width200.jpg',
              ),
              SizedBox(
                height: 16,
              ),
              Expanded(
                child: ListView(
                  children: <Widget>[
                    Chapter(
                      name: "Chapter A",
                      press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BookProblemScreen(),
                          ),
                        );
                      },
                    ),
                    Chapter(
                      name: "Chapter B",
                      press: () {},
                    ),
                    Chapter(
                      name: "Chapter 1",
                      press: () {},
                    ),
                    Chapter(
                      name: "Chapter 2",
                      press: () {},
                    ),
                    Chapter(
                      name: "Chapter 3",
                      press: () {},
                    ),
                    Chapter(
                      name: "Chapter A",
                      press: () {},
                    ),
                    Chapter(
                      name: "Chapter B",
                      press: () {},
                    ),
                    Chapter(
                      name: "Chapter 1",
                      press: () {},
                    ),
                    Chapter(
                      name: "Chapter 2",
                      press: () {},
                    ),
                    Chapter(
                      name: "Chapter 3",
                      press: () {},
                    ),
                    Chapter(
                      name: "Chapter 3",
                      press: () {},
                    ),
                    Chapter(
                      name: "Chapter 3",
                      press: () {},
                    ),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Chapter extends StatelessWidget {
  const Chapter({
    @required this.name,
    @required this.press,
    Key key,
  }) : super(key: key);

  final String name;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kWhitColor,
        border: Border(
          bottom: BorderSide(
            color: kBackgoundColor,
            width: 3,
          ),
        ),
      ),
      child: ListTile(
        title: Text(
          name,
          style: TextStyle(fontSize: 18),
        ),
        onTap: press,
      ),
    );
  }
}

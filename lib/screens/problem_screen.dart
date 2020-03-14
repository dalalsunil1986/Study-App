import 'package:flutter/material.dart';
import 'package:study/constants.dart';
import 'package:study/screens/solution_screen.dart';
import 'package:study/widgets/drawer.dart';
import 'package:study/widgets/my_appbar.dart';

class BookProblemScreen extends StatefulWidget {
  @override
  _BookProblemScreenState createState() => _BookProblemScreenState();
}

class _BookProblemScreenState extends State<BookProblemScreen> {
  // List problems = [];

  final problems = List<ProblemButton>.generate(
    50,
    (i) => ProblemButton(number: i),
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: defaultAppBar(title: "Chapter A", context: context),
        drawer: MyDrawer(),
        body: Padding(
          padding: EdgeInsets.only(top: 16, left: 16, right: 16),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: GridView.count(
              primary: false,
              crossAxisSpacing: 6,
              mainAxisSpacing: 16,
              crossAxisCount: 4,
              children: problems,
            ),
          ),
        ),
      ),
    );
  }
}

class ProblemButton extends StatelessWidget {
  const ProblemButton({
    Key key,
    @required this.number,
  }) : super(key: key);

  final int number;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: kWhitColor,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BookSolutionScreen(),
          ),
        );
      },
      child: Text(
        "$number",
        style: Theme.of(context).textTheme.display1,
      ),
    );
  }
}

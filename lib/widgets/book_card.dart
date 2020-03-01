import 'package:flutter/material.dart';
import 'package:study/constants.dart';
import 'package:study/ui/sizeInfo.dart';

class BookCard extends StatelessWidget {
  const BookCard({
    @required this.sizingInformation,
    @required this.name,
    @required this.auths,
    @required this.poster,
  });

  final SizingInformation sizingInformation;
  final String name;
  final String auths;
  final String poster;

  @override
  Widget build(BuildContext context) {
    return Row(
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
                poster,
                fit: BoxFit.cover,
                width: sizingInformation.screenSize.width * .18,
              ),
              Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(
                      left: sizingInformation.screenSize.width * .04,
                    ),
                    width: sizingInformation.screenSize.width * .42,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          name,
                          style: Theme.of(context).textTheme.title,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          auths,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.caption,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          width: 15,
        ),
      ],
    );
  }
}

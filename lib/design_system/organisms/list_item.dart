import 'package:flutter/material.dart';

import '../monday_colors.dart';
import '../monday_fonts.dart';

class MondayListItem extends StatelessWidget {
  final String city;
  final String startingPointPlace;
  final String destinationPointPlace;
  final String dateTime;
  final double review;

  const MondayListItem(
      {Key key, this.city, this.startingPointPlace, this.destinationPointPlace, this.dateTime, this.review})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12),
      child: Container(
        decoration: ShapeDecoration(
          color: MondayColors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1.0, style: BorderStyle.solid, color: MondayColors.grey4),
            borderRadius: BorderRadius.all(Radius.circular(9.0)),
          ),
          shadows: [
            BoxShadow(
                color: MondayColors.blackTwo.withOpacity(0.19),
                spreadRadius: 0,
                blurRadius: 2, //
                offset: Offset(0, 1) // changes position of shadow
                ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 18),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.location_city,
                            size: 25,
                            color: MondayColors.blackTwo,
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Text(
                            city + ">" + startingPointPlace,
                            overflow: TextOverflow.ellipsis,
                            style: MondayFont.text(),
                          ),
                        ],
                      ),
                      Text(
                        "Kalkış Zamanı:",
                        style: MondayFont.textBold(),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.location_on,
                            size: 25,
                            color: MondayColors.blackTwo,
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Text(
                            city + ">" + destinationPointPlace,
                            overflow: TextOverflow.ellipsis,
                            style: MondayFont.text(),
                          ),
                        ],
                      ),
                      Text(
                        dateTime,
                        style: MondayFont.text(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 2,
              color: MondayColors.grey5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.star,
                        color: MondayColors.yellow,
                      ),
                      SizedBox(width: 4,),
                      Text(
                        review.toString() + "/4",
                        style: MondayFont.review(),
                      )
                    ],
                  ),
                  Text(
                    "İRTİBAT KUR",
                    style: MondayFont.textBold(),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

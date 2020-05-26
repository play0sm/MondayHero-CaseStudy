import 'package:casestudy/design_system/molecules/app_bar.dart';
import 'package:casestudy/design_system/monday_colors.dart';
import 'package:casestudy/design_system/monday_fonts.dart';
import 'package:casestudy/design_system/organisms/list_item.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MondayAppbar(
        title: "Son Eklenen Araçlar",
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20,12,20,0),
        child: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.centerRight,
              child: PopupMenuButton<String>(
                offset: Offset(15, 50),
                onSelected: (selected){
                  print(selected);
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(
                      Icons.sort,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      "SIRALA",
                      style: MondayFont.textBold(),
                    )
                  ],
                ),
                itemBuilder: (BuildContext context) {
                  return <String>[
                    "Artandan Azalana",
                    "Azalandan Artana",
                  ].map((String choice) {
                    return PopupMenuItem<String>(
                      value: choice,
                      child: Text(choice),
                    );
                  }).toList();
                },
              ),
            ),
            SizedBox(height: 16,),
            Expanded(
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: 15,
                itemBuilder: (context, index) {
                  return MondayListItem(
                    city: "İstanbul",
                    startingPointPlace: "Başakşehir",
                    destinationPointPlace: "Küçükçekmece",
                    dateTime: "9 Mart 2020/21:05",
                    review: 3.5,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

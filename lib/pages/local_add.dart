import 'package:casestudy/design_system/atoms/button.dart';
import 'package:casestudy/design_system/molecules/drop_down.dart';
import 'package:casestudy/design_system/monday_colors.dart';
import 'package:casestudy/design_system/monday_fonts.dart';
import 'package:casestudy/design_system/organisms/list_item.dart';
import 'package:flutter/material.dart';

import '../router.dart';

class LocalCarAdd extends StatefulWidget {
  @override
  _LocalCarAddState createState() => _LocalCarAddState();
}

class _LocalCarAddState extends State<LocalCarAdd> {
  List<String> cities = <String>["Ankara", "İstanbul", "İzmir", "Bursa"];
  List<String> places = <String>["Kızılay", "Milli Kütüphane", "Bahçeli", "Koru", "Çayyolu"];

  GlobalKey<FormState> formKey = GlobalKey();

  String selectedCity;
  String selectedStartingPoint;
  String selectedDestinationPoint;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: Column(
        children: <Widget>[
          Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                MondayDropDownButton(
                  icon: Icons.location_city,
                  helpText: "İl Seçiniz",
                  items: cities,
                  currentSelectedItem: selectedCity,
                  onPressed: (value) {
                    setState(() {
                      selectedCity = value;
                    });
                  },
                ),
                SizedBox(
                  height: 8,
                ),
                MondayDropDownButton(
                  icon: Icons.flag,
                  helpText: "Nereden",
                  items: places,
                  currentSelectedItem: selectedStartingPoint,
                  onPressed: (value) {
                    setState(() {
                      selectedStartingPoint = value;
                    });
                  },
                ),
                SizedBox(
                  height: 8,
                ),
                MondayDropDownButton(
                  icon: Icons.location_on,
                  helpText: "Nereye",
                  items: places,
                  currentSelectedItem: selectedDestinationPoint,
                  onPressed: (value) {
                    setState(() {
                      selectedDestinationPoint = value;
                    });
                  },
                ),
                SizedBox(
                  height: 16,
                ),
                MondayButton(
                  onPressed: () {
                    if (formKey.currentState.validate() &&
                        selectedStartingPoint != null &&
                        selectedCity != null &&
                        selectedDestinationPoint != null) {
                      print(selectedCity);
                      print(selectedStartingPoint);
                      print(selectedDestinationPoint);
                      Navigator.pushNamed(context, Routes.search);
                    } else {
                      Scaffold.of(context).showSnackBar(SnackBar(
                        content: Row(
                          children: <Widget>[
                            Icon(
                              Icons.error,
                              color: MondayColors.white,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text("Lütfen ilgili bilgileri eksiksiz seçiniz."),
                          ],
                        ),
                        backgroundColor: MondayColors.red,
                        behavior: SnackBarBehavior.floating,
                      ));
                    }
                  },
                  text: "BOŞTA ARAÇ ARA",
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 22),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Son Eklenen Araçlar",
                textAlign: TextAlign.start,
                style: MondayFont.header(),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: 10,
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
    );
  }
}

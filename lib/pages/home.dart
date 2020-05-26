import 'package:casestudy/design_system/molecules/app_bar.dart';
import 'package:casestudy/design_system/monday_colors.dart';
import 'package:casestudy/design_system/monday_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'local_add.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    final bool isMobileLayout = shortestSide < 600;
    if (isMobileLayout) {
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ]);
    }
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: MondayAppbar(
          title: "Boşta Araç Ekle",
        ),
        body: DefaultTabController(
          length: 2,
          child: Column(
            children: <Widget>[
              Container(
                constraints: BoxConstraints(maxHeight: 150.0),
                child: Material(
                  color: Colors.white,
                  child: TabBar(
                    labelStyle: MondayFont.tabBar(),
                    indicatorColor: MondayColors.yellow,
                    unselectedLabelColor: MondayColors.grey2,
                    labelColor: MondayColors.black,
                    indicatorWeight: 3,
                    tabs: [
                      Tab(text: "ŞEHİR İÇİ"),
                      Tab(text: "ŞEHİRLER ARASI"),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    LocalCarAdd(),
                    Center(
                      child: Text("SEHİRLER ARASI"),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: MondayColors.white,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: MondayColors.black,
          unselectedItemColor: MondayColors.grey3,
          iconSize: 24,
          currentIndex: 1,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.search), title: Text("Ara")),
            BottomNavigationBarItem(icon: Icon(Icons.add_circle), title: Text("Araç Ekle")),
            BottomNavigationBarItem(
                icon: Stack(
                  children: <Widget>[
                    Icon(Icons.notifications),
                    Positioned(
                      right: 0,
                      top: 0,
                      child: Container(
                        width: 12,
                        height: 12,
                        decoration: BoxDecoration(
                          color: MondayColors.yellow,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: MondayColors.white, //                   <--- border color
                            width: 2,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                title: Text("Bildirimler")),
            BottomNavigationBarItem(icon: Icon(Icons.person), title: Text("Profil")),
          ],
        ),
      ),
    );
  }
}

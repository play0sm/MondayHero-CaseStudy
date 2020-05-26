import 'package:casestudy/pages/home.dart';
import 'package:casestudy/pages/search.dart';
import 'package:flutter/cupertino.dart';

class Routes {
  static String get home => "/";

  static String get search => "/search";
}

Map<String, Widget> routes = {
  Routes.home: HomePage(),
  Routes.search: SearchPage(),
};

Route<dynamic> generateRoute(RouteSettings settings) {
  return CupertinoPageRoute(
    builder: (context) => routes[settings.name],
  );
}

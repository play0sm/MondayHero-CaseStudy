import 'package:casestudy/design_system/monday_colors.dart';
import 'package:casestudy/design_system/monday_fonts.dart';
import 'package:flutter/material.dart';

class MondayAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget> actions;

  MondayAppbar({
    Key key,
    @required this.title,
    this.actions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      leading: Navigator.canPop(context)
          ? IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          : null,
      titleSpacing: 0,
      centerTitle: true,
      backgroundColor: MondayColors.black,
      iconTheme: IconThemeData(
        color: MondayColors.white,
      ),
      title: Text(
        title,
        style: MondayFont.appBar(),
      ),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

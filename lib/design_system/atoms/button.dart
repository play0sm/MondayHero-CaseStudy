import 'package:casestudy/design_system/monday_colors.dart';
import 'package:casestudy/design_system/monday_fonts.dart';
import 'package:flutter/material.dart';

class MondayButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool loading;
  final Color color;

  const MondayButton({Key key, this.text, this.onPressed, this.loading = false, this.color = MondayColors.yellow}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: MondayColors.blackTwo.withOpacity(0.15),
            spreadRadius: 0,
            blurRadius: 4, // changes position of shadow
          ),
        ],
      ),
      child: RaisedButton(
        onPressed: onPressed,
        color: color,
        child: !loading
            ? Text(
                text,
                style: MondayFont.button(),
              )
            : CircularProgressIndicator(
                valueColor: new AlwaysStoppedAnimation<Color>(MondayColors.white),
              ),
        shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(4.0),
        ),
      ),
    );
  }
}

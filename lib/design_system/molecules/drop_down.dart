import 'package:flutter/material.dart';

import '../monday_colors.dart';
import '../monday_fonts.dart';

class MondayDropDownButton extends StatefulWidget {
  final String helpText;
  final IconData icon;
  final List<String> items;
  final Function onPressed;
  final String currentSelectedItem;

  const MondayDropDownButton({Key key, this.helpText, this.icon, this.items,this.onPressed, this.currentSelectedItem})
      : super(key: key);

  @override
  _MondayDropDownButtonState createState() => _MondayDropDownButtonState();
}

class _MondayDropDownButtonState extends State<MondayDropDownButton> {
  Color borderColor = MondayColors.grey4;
  bool _autoValidate = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 16),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1.0, style: BorderStyle.solid, color: borderColor),
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
        ),
      ),
      child: Row(
        children: <Widget>[
          Icon(
            widget.icon,
            color: MondayColors.blackTwo,
            size: 25,
          ),
          SizedBox(
            width: 12,
          ),
          Expanded(
            child: DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 5),
                    focusedBorder: UnderlineInputBorder(borderSide: BorderSide(style: BorderStyle.none)),
                    errorBorder: UnderlineInputBorder(borderSide: BorderSide(style: BorderStyle.none)),
                    focusedErrorBorder: UnderlineInputBorder(borderSide: BorderSide(style: BorderStyle.none)),
                    disabledBorder: UnderlineInputBorder(borderSide: BorderSide(style: BorderStyle.none)),
                    enabledBorder: UnderlineInputBorder(borderSide: BorderSide(style: BorderStyle.none))),
                isDense: true,
                validator: (value) {
                  if (value == null) {
                    setState(() {
                      borderColor = MondayColors.red;
                    });
                  }
                  return null;
                },
                autovalidate: _autoValidate,
                iconEnabledColor: MondayColors.grey4,
                iconSize: 30,
                hint: Text(
                  widget.helpText,
                  style: MondayFont.dropDown(),
                ),
                isExpanded: true,
                items: widget.items.map((String value) {
                  return new DropdownMenuItem<String>(
                    value: value,
                    child: new Text(value),
                  );
                }).toList(),
                value: widget.currentSelectedItem,
                onChanged: (value) {
                  widget.onPressed(value);
                  setState(() {
                    _autoValidate = true;
                    borderColor = MondayColors.grey4;
                  });
                }),
          ),
        ],
      ),
    );
  }
}

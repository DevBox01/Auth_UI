// ignore_for_file: file_names, prefer_typing_uninitialized_variables

import 'package:colours/colours.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

//
const kPrimaryColor = Color(0xFF6F35A5);
const primaryColor = Color(0xFF6F35A5);
const kPrimaryLightColor = Color(0xFFF1E6FF);

//

class ColorPickerBtn extends StatefulWidget {
  const ColorPickerBtn({
    key,
    required this.text,
    required this.subtitle,
    required this.icon,
    required this.size,
    required this.style,
    this.iconColor,
    this.child,
  }) : super(key: key);

  final String text, subtitle;
  final IconData icon;
  final double size;
  final TextStyle style;
  final iconColor;
  final child;
  //

  @override
  State<ColorPickerBtn> createState() => _ColorPickerBtnState();
}

Color color = Colors.green;
Color pickerColor = kPrimaryColor;

class _ColorPickerBtnState extends State<ColorPickerBtn> {
  final hoverColor = Colors.white70;

  void changeColor(Color color) async {
    setState(() {
      pickerColor = color;
    });
    Navigator.pop(context);
  }

  //Shared Preferences
  final bool _confirm = false;

  Widget buildColorPicker(BuildContext context) {
    return BlockPicker(
      availableColors: [
        Colors.blue,
        Colors.grey,
        Colors.indigo,
        Colors.deepOrangeAccent,
        Colors.pink,
        Colors.amber,
        Colors.deepPurple,
        Colors.brown,
        // Colours Side,
        Colours.blueViolet,
        Colours.burlyWood,
        Colours.burntSienna,
        Colours.cadetBlue,
        Colours.chartReuse,
        Colours.chocolate,
        Colours.coral,
        Colours.cornFlowerBlue,
        Colours.crimson,
        Colours.darkBlue,
        Colours.darkCyan,
        Colours.darkGoldenRod,
        Colours.darkGreen,
        Colours.darkGrey,
        Colours.darkKhaki,
        Colours.darkMagenta,
        Colours.darkOliveGreen,
        Colours.darkOrange,
        Colours.darkOrchid,
        Colours.darkRed,
        Colours.darkSalmon,
        Colours.darkSeagreen,
        Colours.darkSlateBlue,
        Colours.darkSlateGrey,
        Colours.darkTurquoise,
        Colours.darkViolet,
        Colours.deepPink,
        Colours.deepSkyBlue,
        Colours.dimGrey,
        Colours.dodgerBlue,
        Colours.fireBrick,
        Colours.forestGreen,
        Colours.fuchsia,
        Colours.goldenRod,
        Colours.greenYellow,
        Colours.indianRed,
      ],
      onColorChanged: changeColor,
      pickerColor: pickerColor,
    );
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return ListTile(
      leading: Icon(
        widget.icon,
        size: widget.size,
      ),
      title: Text(
        widget.text,
        style: widget.style,
      ),
      trailing: CircleAvatar(radius: 9, backgroundColor: pickerColor),
      subtitle: Text(widget.subtitle),
      iconColor: widget.iconColor,
      hoverColor: hoverColor,
      enableFeedback: _confirm,
      onTap: () async {
        showDialog(
            useSafeArea: true,
            context: context,
            builder: (context) => AlertDialog(
                  insetPadding: const EdgeInsets.all(10),
                  content: Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.center,
                    children: <Widget>[
                      SizedBox(
                          height: height - 450,
                          child: SingleChildScrollView(
                            child: buildColorPicker(context),
                          )),
                    ],
                  ),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                ));
      },
    );
  }
}

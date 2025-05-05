import 'package:flutter/material.dart';

Color buttonInsideColor = Color.fromRGBO(235, 235, 228, 1);

Widget longButton(BuildContext context, String buttonText, Function()? onPress) {
  var size = MediaQuery.of(context).size;
  double width = size.width;
  double height = size.height;

  //creates a sizedbox that drives the minimum size of the button.
  return SizedBox(
    width: width * 0.9,
    height: height / 13,
    child: OutlinedButton(
      onPressed: onPress,
      style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all<Color>(buttonInsideColor),
          side: WidgetStateProperty.all(BorderSide(color: Color.fromRGBO(60, 98, 26, 1), width: 2.5)),
          shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)))
      ),
      child: Text(
        buttonText,
        style: TextStyle(
            letterSpacing: 2.0,
            color: Colors.black,
            fontSize: height / 64
        ),
      ),
    ),
  );
}

Widget shortButton(BuildContext context, String buttonText, Function()? onPress) {
  var size = MediaQuery.of(context).size;
  double width = size.width;
  double height = size.height;

  //creates a sizedbox that drives the minimum size of the button.
  return SizedBox(
    width: width * 0.2,
    height: height / 20,
    child: OutlinedButton(
      onPressed: onPress,
      style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all<Color>(buttonInsideColor),
          side: WidgetStateProperty.all(BorderSide(color: Color.fromRGBO(60, 98, 26, 1), width: 2.5)),
          shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)))
      ),
      child: Text(
        buttonText,
        style: TextStyle(
            letterSpacing: 1,
            color: Colors.black,
            fontSize: height / 64
        ),
      ),
    ),
  );
}

Widget headerText(BuildContext context, String text, double fontSize) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(
      letterSpacing: 2.0,
      fontSize: fontSize,
      fontWeight: FontWeight.bold,
      fontFamily: 'FacultyGlyphic',
      color: Colors.black,
    ),
  );
}

Widget headerTextWithColor(BuildContext context, String text, double fontSize, Color color) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(
      letterSpacing: 2.0,
      fontSize: fontSize,
      fontWeight: FontWeight.bold,
      fontFamily: 'FacultyGlyphic',
      color: color,
    ),
  );
}

Widget noInternetPopup(BuildContext context) {
  return AlertDialog(

  );
}
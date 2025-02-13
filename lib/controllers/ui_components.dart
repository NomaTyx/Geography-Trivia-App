import 'package:flutter/material.dart';

Color buttonInsideColor = Color.fromRGBO(235, 235, 228, 1);

Widget longButton(BuildContext context, String buttonText, Function()? onPress) {
  var size = MediaQuery.of(context).size;
  double width = size.width;
  double height = size.height;

  //creates a sizedbox that drives the maximum size of the button.
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
        style: const TextStyle(
            letterSpacing: 2.0,
            color: Colors.black,
            fontSize: 15
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
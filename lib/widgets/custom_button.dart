import 'package:flutter/material.dart';

ButtonStyle customButtonStyle() {
  return ElevatedButton.styleFrom(
    primary: Colors.blueAccent,
    onPrimary: Colors.white,
    padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12.0),
    ),
    textStyle: TextStyle(fontSize: 18.0),
  );
}

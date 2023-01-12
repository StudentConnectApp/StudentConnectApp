import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Center(
      child: Container(
        color: Colors.white,
        child: const Align(
          alignment: Alignment.center,
          child: DefaultTextStyle(
            style: TextStyle(color: Colors.black),
            child: Text("Welcome to Student Connect"),
          ),
        ),
      ),
    )
  ));
}





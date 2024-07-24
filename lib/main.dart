// ignore_for_file: use_key_in_widget_constructors, empty_constructor_bodies

import 'package:flutter/material.dart';
import "package:flutter_application_1/pages/home.dart";
import "package:flutter_application_1/pages/choose_location.dart";
import "package:flutter_application_1/pages/loading.dart";

void main() {
  runApp(
    MaterialApp(
      initialRoute: "/home",
      routes: {
        "/": (context) => Loading(),
        "/home": (context) => Home(),
        "/location": (context) => ChooseLocation(),
      },
    ),
  );
}

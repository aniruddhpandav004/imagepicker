import 'dart:js';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'homescreen.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => homescreen(),
      },
    ),
  );
}
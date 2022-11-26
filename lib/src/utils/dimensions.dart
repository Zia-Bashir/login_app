// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

double dimensions(double size, BuildContext context) {
  var screenSize = MediaQuery.of(context).size;

  var screenHeight = screenSize.height;
  var screenWidth = screenSize.width;

  var calSize = 781 / size;

  var getSize = screenHeight / calSize;
  return getSize;
}

import 'package:flutter/painting.dart';

double changeHeight(Size size, double height) {
  return size.height * height;
}

class Width {
  Size size;
  Width(this.size);
  Object listOfWidths() {
    return {
      "appBar": changeHeight(size, 0.35),
      "iconSize": changeHeight(size, 0.05),
      // "appBar": changeHeight(size, 0.35),
    };
  }
}

    // var f = (Size size, height) {
    //   return size.height * height;
    // };
    // func
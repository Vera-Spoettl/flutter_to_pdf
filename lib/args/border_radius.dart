import 'package:flutter/widgets.dart' show BorderRadius;

import 'package:pdf/widgets.dart' as pw show BorderRadius;

import 'radius.dart';


extension BorderRadiusConverter on BorderRadius {
  pw.BorderRadius toPdfBorderRadius() {
    print('BorderRadiusConverter: $this');
    // TODO handle circular and elliptical
    return pw.BorderRadius.only(
    topLeft: topLeft.toPdfRadius(),
    topRight: topRight.toPdfRadius(),
    bottomLeft: bottomLeft.toPdfRadius(),
    bottomRight: bottomRight.toPdfRadius(),
  );
  }
}
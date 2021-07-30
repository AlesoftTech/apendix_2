import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ColorsBase.dart';

class BoxDecorationBase extends BoxDecoration {
  static BoxDecoration forContentContainer() {
    return new BoxDecoration(
      color: ColorsBase.lightGreen,
      border: Border.all(width: 1, color: ColorsBase.lightGreen),
      borderRadius: const BorderRadius.all(Radius.circular(40)),
    );
  }
}

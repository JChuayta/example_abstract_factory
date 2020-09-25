import 'package:flutter/cupertino.dart';
import '../productos_abstractos/ISlider.dart';

class IosSlider implements ISlider {
  @override
  Widget render(double value, onChanged) {
    return CupertinoSlider(
      min: 0.0,
      max: 100.0,
      value: value,
      onChanged: onChanged,
    );
  }
}

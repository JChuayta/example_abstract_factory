import 'package:flutter/material.dart';
import '../productos_abstractos/ISlider.dart';

class AndroidSlider implements ISlider {
  @override
  Widget render(double value, onChanged) {
    return Slider(
      activeColor: Colors.black,
      inactiveColor: Colors.grey,
      min: 0.0,
      max: 100.0,
      value: value,
      onChanged: onChanged,
    );
  }
}

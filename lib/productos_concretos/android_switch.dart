import '../productos_abstractos/ISwitch.dart';
import 'package:flutter/material.dart';

class AndroidSwitch implements ISwitch {
  @override
  Widget render(bool value, onChanged) {
    return Switch(
      activeColor: Colors.black,
      value: value,
      onChanged: onChanged,
    );
  }
}

import 'package:flutter/cupertino.dart';
import '../productos_abstractos/ISwitch.dart';

class IosSwitch implements ISwitch {
  @override
  Widget render(bool value, onChanged) {
    return CupertinoSwitch(
      value: value,
      onChanged: onChanged,
    );
  }
  
}

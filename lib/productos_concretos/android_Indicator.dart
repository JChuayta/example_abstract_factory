import 'package:flutter/material.dart';
import '../productos_abstractos/IIndicator.dart';

class AndroidIndicator implements IIndicator {
  @override
  Widget render() {
    return CircularProgressIndicator(
      backgroundColor: Color(0xFFECECEC),
      valueColor: AlwaysStoppedAnimation<Color>(
        Colors.black.withOpacity(0.65),
      ),
    );
  }
}

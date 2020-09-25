import 'package:flutter/cupertino.dart';
import '../productos_abstractos/IIndicator.dart';

class IosIndicator implements IIndicator {
  @override
  Widget render() {
    return CupertinoActivityIndicator();
  }
}

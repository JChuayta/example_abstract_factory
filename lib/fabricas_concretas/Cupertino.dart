import '../FabricaWidgets.dart';
import '../productos_abstractos/IIndicator.dart';
import '../productos_abstractos/ISlider.dart';
import '../productos_abstractos/ISwitch.dart';

import '../productos_concretos/ios_indicator.dart';
import '../productos_concretos/ios_slider.dart';
import '../productos_concretos/ios_switch.dart';

class CupertinoWidget implements FabricaWidgets {
  @override
  IIndicator createIndicator() {
    // TODO: implement createActivityIndicator
    return new IosIndicator();
  }

  @override
  ISlider createSlider() {
    // TODO: implement createSlider
    return new IosSlider();
  }

  @override
  ISwitch createSwitch() {
    // TODO: implement createSwitch
    return new IosSwitch();
  }

  @override
  String getTitle() {
    // TODO: implement getTitle
    return "Widgets estilo IOS";
  }
}

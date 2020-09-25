import '../FabricaWidgets.dart';
import '../productos_abstractos/IIndicator.dart';
import '../productos_abstractos/ISlider.dart';
import '../productos_abstractos/ISwitch.dart';

import '../productos_concretos/android_Indicator.dart';
import '../productos_concretos/android_slider.dart';
import '../productos_concretos/android_switch.dart';

class MaterialWidget implements FabricaWidgets {
  @override
  IIndicator createIndicator() {
    // TODO: implement createActivityIndicator
    return new AndroidIndicator();
  }

  @override
  ISlider createSlider() {
    // TODO: implement createSlider
    return new AndroidSlider();
  }

  @override
  ISwitch createSwitch() {
    // TODO: implement createSwitch
    return new AndroidSwitch();
  }

  @override
  String getTitle() {
    // TODO: implement getTitle
    return "Wiidgets estilo Android";
  }
}

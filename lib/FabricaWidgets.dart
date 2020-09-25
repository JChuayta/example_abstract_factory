import 'package:example_abstract_factory/productos_abstractos/IIndicator.dart';
import 'package:example_abstract_factory/productos_abstractos/ISlider.dart';
import 'package:example_abstract_factory/productos_abstractos/ISwitch.dart';

abstract class FabricaWidgets {
  String getTitle();
  IIndicator createIndicator();
  ISlider createSlider();
  ISwitch createSwitch();
}

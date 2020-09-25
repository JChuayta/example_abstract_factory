import 'package:example_abstract_factory/fabricas_concretas/Material.dart';
import 'package:ff_navigation_bar/ff_navigation_bar.dart';
import 'FabricaWidgets.dart';
import 'productos_abstractos/IIndicator.dart';
import 'productos_abstractos/ISlider.dart';
import 'productos_abstractos/ISwitch.dart';
import 'package:flutter/material.dart';

import 'fabricas_concretas/Cupertino.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'APP',
      initialRoute: 'home',
      routes: {
        'home': (BuildContext context) => Cliente(),
      },
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white, primaryColor: Colors.blue),
    );
  }
}

class Cliente extends StatefulWidget {
  @override
  _ClienteState createState() => _ClienteState();
}

class _ClienteState extends State<Cliente> {
  FabricaWidgets fabrica = new CupertinoWidget();

  //creamos una instancia del IIndicator
  IIndicator _indicator;
  //creamos una instancia del ISlider e inicializamos un valor
  ISlider _slider;
  double _sliderValue = 50.0;
  String get _sliderValueString => _sliderValue.toStringAsFixed(0);
  //creamos una instancia del ISwitch e inicializamos su valor
  ISwitch _switch;
  bool _switchValue = false;
  String get _switchValueString => _switchValue ? 'ON' : 'OFF';
  int selectedIndex = 0;
  void _setSwitchValue(bool value) {
    setState(() {
      _switchValue = value;
    });
  }

  void _setSliderValue(double value) {
    setState(() {
      _sliderValue = value;
    });
  }

  void _createWidgets() {
    _slider = fabrica.createSlider();
    _switch = fabrica.createSwitch();
    _indicator = fabrica.createIndicator();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _createWidgets();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Patron Fabrica Abstracta"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.only(top: 20.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Text(
                fabrica.getTitle(),
                style: TextStyle(fontSize: 25.0),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                child: _indicator.render(),
              ),
              Container(
                padding: EdgeInsets.all(30.0),
                child: Column(
                  children: <Widget>[
                    Text('Slider ($_sliderValueString%)'),
                    _slider.render(_sliderValue, _setSliderValue),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(30.0),
                child: Column(
                  children: <Widget>[
                    Text('Switch ($_switchValueString)'),
                    _switch.render(_switchValue, _setSwitchValue),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

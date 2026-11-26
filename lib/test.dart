  import 'package:flutter/material.dart';
   import 'package:hive/hive.dart';
   import 'package:hive_flutter/hive_flutter.dart';
   import 'package:fl_chart/fl_chart.dart';
   import 'cicadaData.dart';
   import 'chart.dart';
   import 'dart:async';
    final streamController = StreamController<String>();

  // 2. Get the stream from the controller
  //    This is the stream that other parts of your application will listen to.
    Stream<String> myStream = streamController.stream;
    class CicadaDataTestThing {
    static ValueNotifier<int> energyPointsNotifier = ValueNotifier<int>(1);
    
  static void energyPointsChanged() {
    energyPointsNotifier.value = -1 * energyPointsNotifier.value;
  }
    }
@JS()
library dart2_js_interop_casts.chart;

import 'package:js/js.dart';

@JS()
@anonymous
abstract class ChartData<T> {
  external factory ChartData({T data});
  T get data;
}

class TimeSeries {
  String get domain => 'Hello World';
}

@TestOn('browser')
import 'package:dart2_js_interop_casts/chart.dart';
import 'package:test/test.dart';

void main() {
  test('should fail in both DDC and Dart2JS', () {
    // Start with a ChartData<TimeSeries>.
    final explicitTypeChart = new ChartData<TimeSeries>(
      data: new TimeSeries(),
    );
    
    // Downcast to a ChartData<dynamic>.
    final ChartData<dynamic> downcastTypeChart = explicitTypeChart;

    // "As" cast back to ChartData<TimeSeries>.
    expect(
      () => downcastTypeChart as ChartData<TimeSeries>(),
      returnsNormally,
    );
  });
}

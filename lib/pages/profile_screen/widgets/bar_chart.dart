import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:gitsuz/models/user_bar_chart.dart';

class HorizontalBarChart extends StatelessWidget {
  const HorizontalBarChart({
    Key? key,
  }) : super(key: key);

  /// Creates a [BarChart] with sample data and no transition.

  @override
  Widget build(BuildContext context) {
    // For horizontal bar charts, set the [vertical] flag to false.
    return charts.BarChart(
      _createSampleData(),
      animate: false,
      vertical: false,
      barRendererDecorator: charts.BarLabelDecorator<String>(),
      rtlSpec: const charts.RTLSpec(axisDirection: charts.AxisDirection.normal),
      domainAxis: const charts.OrdinalAxisSpec(renderSpec: charts.NoneRenderSpec()),
    );
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<UserRating, String>> _createSampleData() {
    final data = [
      UserRating(
        "A'lo",
        5,
        charts.ColorUtil.fromDartColor(Color(0xff285428)),
      ),
      UserRating(
        "Yaxshi",
        20,
        charts.ColorUtil.fromDartColor(Color(0xff285428)),
      ),
      UserRating(
        "O'rtacha",
        3,
        charts.ColorUtil.fromDartColor(Color(0xff285428)),
      ),
      UserRating(
        "Yomon",
        0,
        charts.ColorUtil.fromDartColor(Color(0xff285428)),
      ),
      UserRating(
        "Juda Yomon",
        0,
        charts.ColorUtil.fromDartColor(Color(0xff285428)),
      ),
    ];

    return [
      charts.Series<UserRating, String>(
        id: "Ratings",
        data: data,
        domainFn: (UserRating series, _) => series.rating,
        measureFn: (UserRating series, _) => series.price,
        colorFn: (UserRating series, _) => series.barColor,
        displayName: 'hello',
        labelAccessorFn: (UserRating series, _) => '${series.rating}: \$${series.price.toString()}',
      )
    ];
  }
}

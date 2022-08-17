import 'package:charts_flutter/flutter.dart' as charts;

class UserRating {
  String rating;
  int price;
  charts.Color barColor;

  UserRating(this.rating, this.price, this.barColor);
}
import 'package:flutter/widgets.dart';

class DateProvider with ChangeNotifier {
  DateTime pickedDate = DateTime.now();

  void setDate(DateTime date) {
    pickedDate = date;
    notifyListeners();
  }

  String dmyFormat() {
    return '${pickedDate.day}/${pickedDate.month}/${pickedDate.year}';
  }
}
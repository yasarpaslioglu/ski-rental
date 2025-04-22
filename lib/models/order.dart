import 'equipment.dart';

class Order {
  final DateTime orderDate;
  final List<Equipment> items;
  final double totalPrice;

  Order({
    required this.orderDate,
    required this.items,
    required this.totalPrice,
  });
}

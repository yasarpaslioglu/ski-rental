import 'package:ski_rental/models/equipment.dart';

class EquipmentOrder {
  Equipment equipment;
  int quantity;
  double total_price;

  EquipmentOrder({
    required this.equipment,
    required this.quantity,
    required this.total_price
  });
}
class Equipment {
  EquipmentType type;
  String name;
  String desc;
  double price;

  Equipment({
    required this.type,
    required this.name,
    required this.desc,
    required this.price,
  });
}

enum EquipmentType {ski, snowboard, skiBoots, snowboardBoots, helmet, goggle, jacket, pants}
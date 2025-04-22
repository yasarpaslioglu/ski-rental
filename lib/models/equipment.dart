class Equipment {
  EquipmentType type;
  String name;
  String desc;
  double price;
  String imageUrl;

  Equipment({
    required this.type,
    required this.name,
    required this.desc,
    required this.price,
    required this.imageUrl
  });
}

enum EquipmentType {ski, snowboard, skiBoots, snowboardBoots, helmet, goggle, jacket, pants}
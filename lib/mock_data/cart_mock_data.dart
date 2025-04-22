import 'package:ski_rental/themes/images_url.dart';

import '../models/equipment.dart';

class CartMockData {
  List<Equipment> mockCart = [
    Equipment(
      type: EquipmentType.ski,
      name: 'All-Mountain Skis',
      desc: 'Great for all terrains and snow conditions.',
      price: 45.0,
      imageUrl: ImagesUrl.skiPlaceholderImage,
    ),
    Equipment(
      type: EquipmentType.skiBoots,
      name: 'Performance Ski Boots',
      desc: 'Comfortable boots with secure fit.',
      price: 25.0,
      imageUrl: ImagesUrl.skiBootsPlaceholderImage,
    ),
    Equipment(
      type: EquipmentType.helmet,
      name: 'Safety Ski Helmet',
      desc: 'Protective helmet with adjustable fit.',
      price: 10.0,
      imageUrl: ImagesUrl.helmetPlaceholderImage,
    ),
    Equipment(
      type: EquipmentType.goggle,
      name: 'Anti-Fog Ski Goggles',
      desc: 'Clear vision even in snowstorms.',
      price: 8.0,
      imageUrl: ImagesUrl.gogglesPlaceholderImage,
    ),
  ];

}
import 'package:ski_rental/themes/images_url.dart';

import '../models/equipment.dart';
import '../models/order.dart';

class OrderMockData {
  final List<Order> mockOrders = [
    Order(
      orderDate: DateTime(2025, 4, 1),
      items: [
        Equipment(
          type: EquipmentType.ski,
          name: 'All-Mountain Skis',
          desc: 'Great for any terrain.',
          price: 45.0,
          imageUrl: ImagesUrl.skiPlaceholderImage,
        ),
        Equipment(
          type: EquipmentType.helmet,
          name: 'Ski Helmet',
          desc: 'Secure and comfortable.',
          price: 10.0,
          imageUrl: ImagesUrl.helmetPlaceholderImage,
        ),
      ],
      totalPrice: 55.0,
    ),
    Order(
      orderDate: DateTime(2025, 3, 20),
      items: [
        Equipment(
          type: EquipmentType.snowboard,
          name: 'Freestyle Snowboard',
          desc: 'Great for tricks and park riding.',
          price: 50.0,
          imageUrl: ImagesUrl.snowboardPlaceholderImage,
        ),
        Equipment(
          type: EquipmentType.goggle,
          name: 'Snow Goggles',
          desc: 'Anti-fog and UV protection.',
          price: 8.0,
          imageUrl: ImagesUrl.gogglesPlaceholderImage,
        ),
      ],
      totalPrice: 58.0,
    ),
    Order(
      orderDate: DateTime(2025, 3, 20),
      items: [
        Equipment(
          type: EquipmentType.snowboard,
          name: 'Freestyle Snowboard',
          desc: 'Great for tricks and park riding.',
          price: 50.0,
          imageUrl: ImagesUrl.snowboardPlaceholderImage,
        ),
        Equipment(
          type: EquipmentType.goggle,
          name: 'Snow Goggles',
          desc: 'Anti-fog and UV protection.',
          price: 8.0,
          imageUrl: ImagesUrl.gogglesPlaceholderImage,
        ),
      ],
      totalPrice: 58.0,
    ),
    Order(
      orderDate: DateTime(2025, 4, 1),
      items: [
        Equipment(
          type: EquipmentType.ski,
          name: 'All-Mountain Skis',
          desc: 'Great for any terrain.',
          price: 45.0,
          imageUrl: ImagesUrl.skiPlaceholderImage,
        ),
        Equipment(
          type: EquipmentType.helmet,
          name: 'Ski Helmet',
          desc: 'Secure and comfortable.',
          price: 10.0,
          imageUrl: ImagesUrl.helmetPlaceholderImage,
        ),
      ],
      totalPrice: 55.0,
    ),
  ];

}
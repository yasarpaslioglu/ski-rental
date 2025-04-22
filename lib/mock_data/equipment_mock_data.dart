import 'package:ski_rental/themes/images_url.dart';

import '../models/equipment.dart';

class EquipmentMockData {
  final List<Equipment> mockEquipmentList = [
    // Skis
    Equipment(
      type: EquipmentType.ski,
      name: 'Atomic Redster X9',
      desc: 'High-performance skis for racing and carving.',
      price: 45.00,
      imageUrl: ImagesUrl.skiPlaceholderImage
    ),
    Equipment(
      type: EquipmentType.ski,
      name: 'Rossignol Experience 88',
      desc: 'Versatile all-mountain skis with smooth control.',
      price: 40.00,
      imageUrl: ImagesUrl.skiPlaceholderImage
    ),
    Equipment(
      type: EquipmentType.ski,
      name: 'Head Supershape i.Titan',
      desc: 'Precision carving skis for aggressive skiers.',
      price: 48.00,
        imageUrl: ImagesUrl.skiPlaceholderImage
    ),
    Equipment(
      type: EquipmentType.ski,
      name: 'K2 Mindbender 90C',
      desc: 'Lightweight skis great for groomers and powder.',
      price: 42.00,
      imageUrl: ImagesUrl.skiPlaceholderImage
    ),
    Equipment(
      type: EquipmentType.ski,
      name: 'Nordica Enforcer 94',
      desc: 'Powerful all-mountain skis with damp stability.',
      price: 44.00,
      imageUrl: ImagesUrl.skiPlaceholderImage
    ),

    // Snowboards
    Equipment(
      type: EquipmentType.snowboard,
      name: 'Burton Custom',
      desc: 'All-mountain favorite for years with solid pop.',
      price: 40.00,
      imageUrl: ImagesUrl.snowboardPlaceholderImage
    ),
    Equipment(
      type: EquipmentType.snowboard,
      name: 'GNU Riders Choice',
      desc: 'Asym twin board with great freestyle ability.',
      price: 38.00,
        imageUrl: ImagesUrl.snowboardPlaceholderImage
    ),
    Equipment(
      type: EquipmentType.snowboard,
      name: 'Lib Tech T.Rice Pro',
      desc: 'Aggressive freestyle board with C2 profile.',
      price: 42.00,
        imageUrl: ImagesUrl.snowboardPlaceholderImage
    ),
    Equipment(
      type: EquipmentType.snowboard,
      name: 'Jones Mountain Twin',
      desc: 'Do-it-all directional twin for resort and backcountry.',
      price: 43.00,
        imageUrl: ImagesUrl.snowboardPlaceholderImage
    ),
    Equipment(
      type: EquipmentType.snowboard,
      name: 'Capita DOA',
      desc: 'Award-winning camber board for park and beyond.',
      price: 39.00,
        imageUrl: ImagesUrl.snowboardPlaceholderImage
    ),

    // Ski Boots
    Equipment(
      type: EquipmentType.skiBoots,
      name: 'Salomon S/Pro 100',
      desc: 'Responsive and comfortable performance boots.',
      price: 25.00,
      imageUrl: ImagesUrl.skiBootsPlaceholderImage
    ),
    Equipment(
      type: EquipmentType.skiBoots,
      name: 'Tecnica Mach1 110',
      desc: 'Stiff flex boots for advanced skiers.',
      price: 27.00,
        imageUrl: ImagesUrl.skiBootsPlaceholderImage
    ),
    Equipment(
      type: EquipmentType.skiBoots,
      name: 'Lange RX 120',
      desc: 'All-mountain boots with race DNA.',
      price: 28.00,
        imageUrl: ImagesUrl.skiBootsPlaceholderImage
    ),
    Equipment(
      type: EquipmentType.skiBoots,
      name: 'Atomic Hawx Prime 100',
      desc: 'Balance of comfort and performance.',
      price: 26.00,
        imageUrl: ImagesUrl.skiBootsPlaceholderImage
    ),
    Equipment(
      type: EquipmentType.skiBoots,
      name: 'Nordica Speedmachine 90',
      desc: 'User-friendly boots for progressing skiers.',
      price: 24.00,
        imageUrl: ImagesUrl.skiBootsPlaceholderImage
    ),

    // Snowboard Boots
    Equipment(
      type: EquipmentType.snowboardBoots,
      name: 'DC Phase Lace',
      desc: 'Simple and comfortable freestyle boots.',
      price: 22.00,
        imageUrl: ImagesUrl.snowboardBootsPlaceholderImage
    ),
    Equipment(
      type: EquipmentType.snowboardBoots,
      name: 'Burton Moto BOA',
      desc: 'Soft flex boots with quick BOA lacing.',
      price: 23.00,
        imageUrl: ImagesUrl.snowboardBootsPlaceholderImage
    ),
    Equipment(
      type: EquipmentType.snowboardBoots,
      name: 'ThirtyTwo Lashed',
      desc: 'Best-selling boots for freestyle and all-mountain.',
      price: 25.00,
        imageUrl: ImagesUrl.snowboardBootsPlaceholderImage
    ),
    Equipment(
      type: EquipmentType.snowboardBoots,
      name: 'Ride Lasso Pro',
      desc: 'Aggressive boots with dual BOA for precise fit.',
      price: 26.00,
        imageUrl: ImagesUrl.snowboardBootsPlaceholderImage
    ),
    Equipment(
      type: EquipmentType.snowboardBoots,
      name: 'K2 Maysis',
      desc: 'Stiff, responsive boots with Endo 2.0 tech.',
      price: 27.00,
        imageUrl: ImagesUrl.snowboardBootsPlaceholderImage
    ),

    // Helmets
    Equipment(
      type: EquipmentType.helmet,
      name: 'Giro Ledge MIPS',
      desc: 'Skate-style helmet with MIPS protection.',
      price: 10.00,
      imageUrl: ImagesUrl.helmetPlaceholderImage
    ),
    Equipment(
      type: EquipmentType.helmet,
      name: 'Smith Holt',
      desc: 'Durable and warm with adjustable vents.',
      price: 9.00,
        imageUrl: ImagesUrl.helmetPlaceholderImage
    ),
    Equipment(
      type: EquipmentType.helmet,
      name: 'POC Obex Spin',
      desc: 'Lightweight, high-tech safety helmet.',
      price: 12.00,
        imageUrl: ImagesUrl.helmetPlaceholderImage
    ),
    Equipment(
      type: EquipmentType.helmet,
      name: 'Oakley Mod 5',
      desc: 'Premium helmet with modular brim system.',
      price: 11.00,
        imageUrl: ImagesUrl.helmetPlaceholderImage
    ),
    Equipment(
      type: EquipmentType.helmet,
      name: 'Anon Raider 3',
      desc: 'Minimalist design with solid impact protection.',
      price: 8.00,
        imageUrl: ImagesUrl.helmetPlaceholderImage
    ),

    // Goggles
    Equipment(
      type: EquipmentType.goggle,
      name: 'Oakley Flight Deck',
      desc: 'Wide field of view and anti-fog coating.',
      price: 8.00,
      imageUrl: ImagesUrl.gogglesPlaceholderImage
    ),
    Equipment(
      type: EquipmentType.goggle,
      name: 'Smith I/O Mag',
      desc: 'Quick lens change and spherical optics.',
      price: 9.00,
        imageUrl: ImagesUrl.gogglesPlaceholderImage
    ),
    Equipment(
      type: EquipmentType.goggle,
      name: 'Anon M4 Toric',
      desc: 'High-clarity lens with magnetic lens change.',
      price: 10.00,
        imageUrl: ImagesUrl.gogglesPlaceholderImage
    ),
    Equipment(
      type: EquipmentType.goggle,
      name: 'Dragon X2',
      desc: 'Stylish goggles with frameless design.',
      price: 9.50,
        imageUrl: ImagesUrl.gogglesPlaceholderImage
    ),
    Equipment(
      type: EquipmentType.goggle,
      name: 'Giro Axis',
      desc: 'Modern design with quick lens swapping.',
      price: 8.50,
        imageUrl: ImagesUrl.gogglesPlaceholderImage
    ),

    // Jackets
    Equipment(
      type: EquipmentType.jacket,
      name: 'The North Face Chakal',
      desc: 'Warm, waterproof insulated jacket.',
      price: 18.00,
      imageUrl: ImagesUrl.jacketPlaceholderImage
    ),
    Equipment(
      type: EquipmentType.jacket,
      name: 'Burton Covert',
      desc: 'Breathable and durable for all-day riding.',
      price: 17.00,
        imageUrl: ImagesUrl.jacketPlaceholderImage
    ),
    Equipment(
      type: EquipmentType.jacket,
      name: 'Patagonia Snowshot',
      desc: 'Eco-friendly, weather-resistant performance jacket.',
      price: 19.00,
        imageUrl: ImagesUrl.jacketPlaceholderImage
    ),
    Equipment(
      type: EquipmentType.jacket,
      name: 'Volcom Brighton Pullover',
      desc: 'Stylish anorak with tech features.',
      price: 16.00,
        imageUrl: ImagesUrl.jacketPlaceholderImage
    ),
    Equipment(
      type: EquipmentType.jacket,
      name: '686 Smarty 3-in-1',
      desc: 'Layered system for versatility and warmth.',
      price: 20.00,
        imageUrl: ImagesUrl.jacketPlaceholderImage
    ),

    // Pants
    Equipment(
      type: EquipmentType.pants,
      name: 'Burton Cargo Pants',
      desc: 'Reliable snow pants with lots of storage.',
      price: 15.00,
      imageUrl: ImagesUrl.pantsPlaceholderImage
    ),
    Equipment(
      type: EquipmentType.pants,
      name: 'The North Face Freedom',
      desc: 'Waterproof and breathable shell pants.',
      price: 16.00,
        imageUrl: ImagesUrl.pantsPlaceholderImage
    ),
    Equipment(
      type: EquipmentType.pants,
      name: 'Volcom Articulated',
      desc: 'Slim-fit pants with articulated knees.',
      price: 14.00,
        imageUrl: ImagesUrl.pantsPlaceholderImage
    ),
    Equipment(
      type: EquipmentType.pants,
      name: '686 Everywhere Pant',
      desc: 'Technical pants with casual look.',
      price: 13.00,
        imageUrl: ImagesUrl.pantsPlaceholderImage
    ),
    Equipment(
      type: EquipmentType.pants,
      name: 'Quiksilver Utility Shell',
      desc: 'Performance-focused pants for harsh weather.',
      price: 15.50,
        imageUrl: ImagesUrl.pantsPlaceholderImage
    ),

    // Skis
    Equipment(
        type: EquipmentType.ski,
        name: 'Atomic Redster X9',
        desc: 'High-performance skis for racing and carving.',
        price: 45.00,
        imageUrl: ImagesUrl.skiPlaceholderImage
    ),
    Equipment(
        type: EquipmentType.ski,
        name: 'Rossignol Experience 88',
        desc: 'Versatile all-mountain skis with smooth control.',
        price: 40.00,
        imageUrl: ImagesUrl.skiPlaceholderImage
    ),
    Equipment(
        type: EquipmentType.ski,
        name: 'Head Supershape i.Titan',
        desc: 'Precision carving skis for aggressive skiers.',
        price: 48.00,
        imageUrl: ImagesUrl.skiPlaceholderImage
    ),
    Equipment(
        type: EquipmentType.ski,
        name: 'K2 Mindbender 90C',
        desc: 'Lightweight skis great for groomers and powder.',
        price: 42.00,
        imageUrl: ImagesUrl.skiPlaceholderImage
    ),
    Equipment(
        type: EquipmentType.ski,
        name: 'Nordica Enforcer 94',
        desc: 'Powerful all-mountain skis with damp stability.',
        price: 44.00,
        imageUrl: ImagesUrl.skiPlaceholderImage
    ),

    // Snowboards
    Equipment(
        type: EquipmentType.snowboard,
        name: 'Burton Custom',
        desc: 'All-mountain favorite for years with solid pop.',
        price: 40.00,
        imageUrl: ImagesUrl.snowboardPlaceholderImage
    ),
    Equipment(
        type: EquipmentType.snowboard,
        name: 'GNU Riders Choice',
        desc: 'Asym twin board with great freestyle ability.',
        price: 38.00,
        imageUrl: ImagesUrl.snowboardPlaceholderImage
    ),
    Equipment(
        type: EquipmentType.snowboard,
        name: 'Lib Tech T.Rice Pro',
        desc: 'Aggressive freestyle board with C2 profile.',
        price: 42.00,
        imageUrl: ImagesUrl.snowboardPlaceholderImage
    ),
    Equipment(
        type: EquipmentType.snowboard,
        name: 'Jones Mountain Twin',
        desc: 'Do-it-all directional twin for resort and backcountry.',
        price: 43.00,
        imageUrl: ImagesUrl.snowboardPlaceholderImage
    ),
    Equipment(
        type: EquipmentType.snowboard,
        name: 'Capita DOA',
        desc: 'Award-winning camber board for park and beyond.',
        price: 39.00,
        imageUrl: ImagesUrl.snowboardPlaceholderImage
    ),

    // Ski Boots
    Equipment(
        type: EquipmentType.skiBoots,
        name: 'Salomon S/Pro 100',
        desc: 'Responsive and comfortable performance boots.',
        price: 25.00,
        imageUrl: ImagesUrl.skiBootsPlaceholderImage
    ),
    Equipment(
        type: EquipmentType.skiBoots,
        name: 'Tecnica Mach1 110',
        desc: 'Stiff flex boots for advanced skiers.',
        price: 27.00,
        imageUrl: ImagesUrl.skiBootsPlaceholderImage
    ),
    Equipment(
        type: EquipmentType.skiBoots,
        name: 'Lange RX 120',
        desc: 'All-mountain boots with race DNA.',
        price: 28.00,
        imageUrl: ImagesUrl.skiBootsPlaceholderImage
    ),
    Equipment(
        type: EquipmentType.skiBoots,
        name: 'Atomic Hawx Prime 100',
        desc: 'Balance of comfort and performance.',
        price: 26.00,
        imageUrl: ImagesUrl.skiBootsPlaceholderImage
    ),
    Equipment(
        type: EquipmentType.skiBoots,
        name: 'Nordica Speedmachine 90',
        desc: 'User-friendly boots for progressing skiers.',
        price: 24.00,
        imageUrl: ImagesUrl.skiBootsPlaceholderImage
    ),

    // Snowboard Boots
    Equipment(
        type: EquipmentType.snowboardBoots,
        name: 'DC Phase Lace',
        desc: 'Simple and comfortable freestyle boots.',
        price: 22.00,
        imageUrl: ImagesUrl.snowboardBootsPlaceholderImage
    ),
    Equipment(
        type: EquipmentType.snowboardBoots,
        name: 'Burton Moto BOA',
        desc: 'Soft flex boots with quick BOA lacing.',
        price: 23.00,
        imageUrl: ImagesUrl.snowboardBootsPlaceholderImage
    ),
    Equipment(
        type: EquipmentType.snowboardBoots,
        name: 'ThirtyTwo Lashed',
        desc: 'Best-selling boots for freestyle and all-mountain.',
        price: 25.00,
        imageUrl: ImagesUrl.snowboardBootsPlaceholderImage
    ),
    Equipment(
        type: EquipmentType.snowboardBoots,
        name: 'Ride Lasso Pro',
        desc: 'Aggressive boots with dual BOA for precise fit.',
        price: 26.00,
        imageUrl: ImagesUrl.snowboardBootsPlaceholderImage
    ),
    Equipment(
        type: EquipmentType.snowboardBoots,
        name: 'K2 Maysis',
        desc: 'Stiff, responsive boots with Endo 2.0 tech.',
        price: 27.00,
        imageUrl: ImagesUrl.snowboardBootsPlaceholderImage
    ),

    // Helmets
    Equipment(
        type: EquipmentType.helmet,
        name: 'Giro Ledge MIPS',
        desc: 'Skate-style helmet with MIPS protection.',
        price: 10.00,
        imageUrl: ImagesUrl.helmetPlaceholderImage
    ),
    Equipment(
        type: EquipmentType.helmet,
        name: 'Smith Holt',
        desc: 'Durable and warm with adjustable vents.',
        price: 9.00,
        imageUrl: ImagesUrl.helmetPlaceholderImage
    ),
    Equipment(
        type: EquipmentType.helmet,
        name: 'POC Obex Spin',
        desc: 'Lightweight, high-tech safety helmet.',
        price: 12.00,
        imageUrl: ImagesUrl.helmetPlaceholderImage
    ),
    Equipment(
        type: EquipmentType.helmet,
        name: 'Oakley Mod 5',
        desc: 'Premium helmet with modular brim system.',
        price: 11.00,
        imageUrl: ImagesUrl.helmetPlaceholderImage
    ),
    Equipment(
        type: EquipmentType.helmet,
        name: 'Anon Raider 3',
        desc: 'Minimalist design with solid impact protection.',
        price: 8.00,
        imageUrl: ImagesUrl.helmetPlaceholderImage
    ),

    // Goggles
    Equipment(
        type: EquipmentType.goggle,
        name: 'Oakley Flight Deck',
        desc: 'Wide field of view and anti-fog coating.',
        price: 8.00,
        imageUrl: ImagesUrl.gogglesPlaceholderImage
    ),
    Equipment(
        type: EquipmentType.goggle,
        name: 'Smith I/O Mag',
        desc: 'Quick lens change and spherical optics.',
        price: 9.00,
        imageUrl: ImagesUrl.gogglesPlaceholderImage
    ),
    Equipment(
        type: EquipmentType.goggle,
        name: 'Anon M4 Toric',
        desc: 'High-clarity lens with magnetic lens change.',
        price: 10.00,
        imageUrl: ImagesUrl.gogglesPlaceholderImage
    ),
    Equipment(
        type: EquipmentType.goggle,
        name: 'Dragon X2',
        desc: 'Stylish goggles with frameless design.',
        price: 9.50,
        imageUrl: ImagesUrl.gogglesPlaceholderImage
    ),
    Equipment(
        type: EquipmentType.goggle,
        name: 'Giro Axis',
        desc: 'Modern design with quick lens swapping.',
        price: 8.50,
        imageUrl: ImagesUrl.gogglesPlaceholderImage
    ),

    // Jackets
    Equipment(
        type: EquipmentType.jacket,
        name: 'The North Face Chakal',
        desc: 'Warm, waterproof insulated jacket.',
        price: 18.00,
        imageUrl: ImagesUrl.jacketPlaceholderImage
    ),
    Equipment(
        type: EquipmentType.jacket,
        name: 'Burton Covert',
        desc: 'Breathable and durable for all-day riding.',
        price: 17.00,
        imageUrl: ImagesUrl.jacketPlaceholderImage
    ),
    Equipment(
        type: EquipmentType.jacket,
        name: 'Patagonia Snowshot',
        desc: 'Eco-friendly, weather-resistant performance jacket.',
        price: 19.00,
        imageUrl: ImagesUrl.jacketPlaceholderImage
    ),
    Equipment(
        type: EquipmentType.jacket,
        name: 'Volcom Brighton Pullover',
        desc: 'Stylish anorak with tech features.',
        price: 16.00,
        imageUrl: ImagesUrl.jacketPlaceholderImage
    ),
    Equipment(
        type: EquipmentType.jacket,
        name: '686 Smarty 3-in-1',
        desc: 'Layered system for versatility and warmth.',
        price: 20.00,
        imageUrl: ImagesUrl.jacketPlaceholderImage
    ),

    // Pants
    Equipment(
        type: EquipmentType.pants,
        name: 'Burton Cargo Pants',
        desc: 'Reliable snow pants with lots of storage.',
        price: 15.00,
        imageUrl: ImagesUrl.pantsPlaceholderImage
    ),
    Equipment(
        type: EquipmentType.pants,
        name: 'The North Face Freedom',
        desc: 'Waterproof and breathable shell pants.',
        price: 16.00,
        imageUrl: ImagesUrl.pantsPlaceholderImage
    ),
    Equipment(
        type: EquipmentType.pants,
        name: 'Volcom Articulated',
        desc: 'Slim-fit pants with articulated knees.',
        price: 14.00,
        imageUrl: ImagesUrl.pantsPlaceholderImage
    ),
    Equipment(
        type: EquipmentType.pants,
        name: '686 Everywhere Pant',
        desc: 'Technical pants with casual look.',
        price: 13.00,
        imageUrl: ImagesUrl.pantsPlaceholderImage
    ),
    Equipment(
        type: EquipmentType.pants,
        name: 'Quiksilver Utility Shell',
        desc: 'Performance-focused pants for harsh weather.',
        price: 15.50,
        imageUrl: ImagesUrl.pantsPlaceholderImage
    ),
  ];

  List<Equipment> fetchEquipment() {
    return mockEquipmentList;
  }
}
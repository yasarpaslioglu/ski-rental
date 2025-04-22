import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:ski_rental/models/equipment.dart';
import 'package:ski_rental/screens/cart_screen.dart';
import 'package:ski_rental/screens/dashboard_screen.dart';
import 'package:ski_rental/screens/equipment_screen.dart';
import 'package:ski_rental/screens/my_orders_screen.dart';

import '../themes/app_color.dart';

class Menu extends StatefulWidget {
  const Menu({
    super.key,
  });

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  bool expandEquipment = false;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColor.primary,
      child: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(6.w, 6.h, 0, 0),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Scaffold.of(context).closeDrawer();
                      },
                      icon: Icon(
                        Symbols.menu,
                        color: AppColor.white,
                        size: 30.sp,
                        weight: 600,
                      )),
                  SizedBox(width: 10.w),
                  Text(
                    'Ski Rental',
                    style: TextStyle(color: AppColor.white, fontWeight: FontWeight.w700, fontSize: 32.sp),
                  )
                ],
              ),
            ),
            Divider(color: AppColor.white.withAlpha(100), indent: 10.w, endIndent: 10.w, thickness: 0,),
            // Dashboard
            MenuItem(title: 'Dashboard', iconData: Symbols.home_filled, routeName: DashboardScreen.routeName),
            // Browse Equipment
            InkWell(
              onTap: () {
                setState(() {
                  expandEquipment = !expandEquipment;
                });
              },
              child: Padding(
                padding: EdgeInsets.fromLTRB(15.w, 7.h, 10.w, 7.h),
                child: Row(
                  children: [
                    Icon(Symbols.search, color: AppColor.white),
                    SizedBox(width: 10.w),
                    Expanded(
                      child: Text(
                        'Browse Equipment',
                        style: TextStyle(
                            color: AppColor.white,
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 7.w, 0),
                      child: Icon(
                        expandEquipment
                            ? Symbols.keyboard_arrow_down
                            : Symbols.keyboard_arrow_right,
                        color: AppColor.white,
                        weight: 700,
                      ),
                    )
                  ],
                ),
              ),
            ),
            expandEquipment
                ? Column(
                    children: [
                      MenuItem(title: 'Skis', routeName: EquipmentScreen.routeName, arguments: EquipmentType.ski, isInnerItem: true),
                      MenuItem(title: 'Snowboards', routeName: EquipmentScreen.routeName, arguments: EquipmentType.snowboard, isInnerItem: true),
                      MenuItem(title: 'Ski Boots', routeName: EquipmentScreen.routeName, arguments: EquipmentType.skiBoots, isInnerItem: true),
                      MenuItem(title: 'Snowboard Boots', routeName: EquipmentScreen.routeName, arguments: EquipmentType.snowboardBoots, isInnerItem: true),
                      MenuItem(title: 'Helmets', routeName: EquipmentScreen.routeName, arguments: EquipmentType.helmet, isInnerItem: true),
                      MenuItem(title: 'Goggles', routeName: EquipmentScreen.routeName, arguments: EquipmentType.goggle, isInnerItem: true),
                      MenuItem(title: 'Jackets', routeName: EquipmentScreen.routeName, arguments: EquipmentType.jacket, isInnerItem: true),
                      MenuItem(title: 'Pants', routeName: EquipmentScreen.routeName, arguments: EquipmentType.pants, isInnerItem: true),
                    ],
                  )
                : Container(),
            MenuItem(title: 'My Orders', routeName: MyOrdersScreen.routeName, iconData: Symbols.receipt_long,),
            MenuItem(title: 'Cart', routeName: CartScreen.routeName, iconData: Symbols.shopping_cart,),
          ],
        ),
      ),
    );
  }
}

class MenuItem extends StatelessWidget {


  const MenuItem({
    super.key,
    required this.title,
    required this.routeName,
    this.iconData,
    this.isInnerItem = false,
    this.arguments
  });

  final String title;
  final String routeName;
  final IconData? iconData;
  final bool isInnerItem;
  final Object? arguments;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, routeName, arguments: arguments);
      },
      child: Padding(
        padding: isInnerItem ? EdgeInsets.fromLTRB(65.w, 3.h, 10.w, 3.h) : EdgeInsets.fromLTRB(15.w, 10.h, 10.w, 7.h),
        child: Row(
          children: [
            iconData == null ? Container() : Icon(iconData, color: AppColor.white),
            iconData == null ? Container() : SizedBox(width: 10.w),
            Text(
              title,
              style: TextStyle(
                  color: AppColor.white,
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}

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
  bool expandEquipment = true;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColor.primary,
      child: Padding(
        padding: EdgeInsets.fromLTRB(0, 20.h, 0, 10.h),
        child: ListView(
          children: [
            // Dashboard
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, DashboardScreen.routeName);
              },
              child: Padding(
                padding: EdgeInsets.fromLTRB(30.w, 10.h, 10.w, 7.h),
                child: Text(
                  'Dashboard',
                  style: TextStyle(
                      color: AppColor.white,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            // Browse Equipment
            InkWell(
              onTap: () {
                setState(() {
                  expandEquipment = !expandEquipment;
                });
              },
              child: Padding(
                padding: EdgeInsets.fromLTRB(30.w, 7.h, 10.w, 7.h),
                child: Row(
                  children: [
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
                      // Ski
                      Row(
                        children: [
                          Expanded(
                              child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, EquipmentScreen.routeName, arguments: EquipmentType.ski);
                            },
                            child: Padding(
                              padding:
                                  EdgeInsets.fromLTRB(60.w, 3.h, 10.w, 3.h),
                              child: Text(
                                'Ski',
                                style: TextStyle(
                                    color: AppColor.white,
                                    fontSize: 17.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ))
                        ],
                      ),
                      // Snowboard
                      Row(
                        children: [
                          Expanded(
                              child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, EquipmentScreen.routeName, arguments: EquipmentType.snowboard);
                            },
                            child: Padding(
                              padding:
                                  EdgeInsets.fromLTRB(60.w, 3.h, 10.w, 3.h),
                              child: Text(
                                'Snowboard',
                                style: TextStyle(
                                    color: AppColor.white,
                                    fontSize: 17.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ))
                        ],
                      ),
                      // Ski Boots
                      Row(
                        children: [
                          Expanded(
                              child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, EquipmentScreen.routeName, arguments: EquipmentType.skiBoots);
                            },
                            child: Padding(
                              padding:
                                  EdgeInsets.fromLTRB(60.w, 3.h, 10.w, 3.h),
                              child: Text(
                                'Ski Boots',
                                style: TextStyle(
                                    color: AppColor.white,
                                    fontSize: 17.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ))
                        ],
                      ),
                      // Snowboard Boots
                      Row(
                        children: [
                          Expanded(
                              child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, EquipmentScreen.routeName, arguments: EquipmentType.snowboardBoots);
                            },
                            child: Padding(
                              padding:
                                  EdgeInsets.fromLTRB(60.w, 3.h, 10.w, 3.h),
                              child: Text(
                                'Snowboard Boots',
                                style: TextStyle(
                                    color: AppColor.white,
                                    fontSize: 17.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ))
                        ],
                      ),
                      // Helmet
                      Row(
                        children: [
                          Expanded(
                              child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, EquipmentScreen.routeName, arguments: EquipmentType.helmet);
                            },
                            child: Padding(
                              padding:
                                  EdgeInsets.fromLTRB(60.w, 3.h, 10.w, 3.h),
                              child: Text(
                                'Helmet',
                                style: TextStyle(
                                    color: AppColor.white,
                                    fontSize: 17.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ))
                        ],
                      ),
                      // Goggles
                      Row(
                        children: [
                          Expanded(
                              child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, EquipmentScreen.routeName, arguments: EquipmentType.goggle);
                            },
                            child: Padding(
                              padding:
                                  EdgeInsets.fromLTRB(60.w, 3.h, 10.w, 3.h),
                              child: Text(
                                'Goggles',
                                style: TextStyle(
                                    color: AppColor.white,
                                    fontSize: 17.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ))
                        ],
                      ),
                      // Jacket
                      Row(
                        children: [
                          Expanded(
                              child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, EquipmentScreen.routeName, arguments: EquipmentType.jacket);
                            },
                            child: Padding(
                              padding:
                                  EdgeInsets.fromLTRB(60.w, 3.h, 10.w, 3.h),
                              child: Text(
                                'Jacket',
                                style: TextStyle(
                                    color: AppColor.white,
                                    fontSize: 17.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ))
                        ],
                      ),
                      // Pants
                      Row(
                        children: [
                          Expanded(
                              child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, EquipmentScreen.routeName, arguments: EquipmentType.pants);
                            },
                            child: Padding(
                              padding:
                                  EdgeInsets.fromLTRB(60.w, 3.h, 10.w, 3.h),
                              child: Text(
                                'Pants',
                                style: TextStyle(
                                    color: AppColor.white,
                                    fontSize: 17.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ))
                        ],
                      ),
                    ],
                  )
                : Container(),
            // My Orders
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, MyOrdersScreen.routeName);
              },
              child: Padding(
                padding: EdgeInsets.fromLTRB(30.w, 7.h, 10.w, 7.h),
                child: Text(
                  'My Orders',
                  style: TextStyle(
                      color: AppColor.white,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            // Cart
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, CartScreen.routeName);
              },
              child: Padding(
                padding: EdgeInsets.fromLTRB(30.w, 7.h, 10.w, 7.h),
                child: Text(
                  'Cart',
                  style: TextStyle(
                      color: AppColor.white,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

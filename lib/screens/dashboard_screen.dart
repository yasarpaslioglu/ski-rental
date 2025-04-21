import 'package:carousel_slider_plus/carousel_slider_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:ski_rental/models/equipment.dart';
import 'package:ski_rental/screens/equipment_screen.dart';
import 'package:ski_rental/themes/app_color.dart';

import '../widgets/account_button.dart';
import '../widgets/menu.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  static String routeName = '/dashboard';

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {

    return ScreenUtilInit(
      designSize: const Size(412, 917),
      builder: (context, child) => Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.white,
          foregroundColor: AppColor.primary,
          centerTitle: true,
          title: Text('Ski Rental',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 32.sp)),
          leading: Builder(builder: (context) {
            return IconButton(
                onPressed: () => Scaffold.of(context).openDrawer(),
                icon: Icon(Symbols.menu));
          }),
          actions: [
            AccountButton()
          ],
        ),
        drawer: Menu(),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 20.h, 0, 15.h),
                child: Text(
                  "Rent Equipment",
                  style:
                      TextStyle(fontWeight: FontWeight.w500, fontSize: 20.sp),
                ),
              ),
              CarouselSlider(
                  options: CarouselOptions(
                    height: 200.h,
                  ),
                  items: [
                    // SKi
                    dashboardCarouselItem('Skis', EquipmentType.ski),
                    dashboardCarouselItem('Snowboards', EquipmentType.snowboard),
                    dashboardCarouselItem('Ski Boots', EquipmentType.skiBoots),
                    dashboardCarouselItem('Snowboard Boots', EquipmentType.snowboardBoots),
                    dashboardCarouselItem('Helmets', EquipmentType.helmet),
                    dashboardCarouselItem('Goggles', EquipmentType.goggle),
                    dashboardCarouselItem('Jackets', EquipmentType.jacket),
                    dashboardCarouselItem('Pants', EquipmentType.pants),
                  ]),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 20.h, 0, 15.h),
                child: Text(
                  "My Orders",
                  style:
                  TextStyle(fontWeight: FontWeight.w500, fontSize: 20.sp),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  ClipRRect dashboardCarouselItem(String itemName, EquipmentType type) {
    return ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, EquipmentScreen.routeName,
                          arguments: type);
                        },
                        child: Container(
                          color: AppColor.primary,
                          constraints: BoxConstraints(
                              maxHeight: 200.h,
                              minHeight: 200.h,
                              maxWidth: 300.w,
                              minWidth: 300.w),
                          child: Center(
                              child: Text(
                            itemName,
                            style: TextStyle(
                                color: AppColor.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 20.sp),
                          )),
                        ),
                      ));
  }
}



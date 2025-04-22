import 'package:carousel_slider_plus/carousel_slider_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:ski_rental/mock_data/order_mock_data.dart';
import 'package:ski_rental/models/equipment.dart';
import 'package:ski_rental/screens/equipment_screen.dart';
import 'package:ski_rental/themes/app_color.dart';
import 'package:ski_rental/themes/images_url.dart';

import '../models/order.dart';
import '../widgets/account_button.dart';
import '../widgets/menu.dart';
import '../widgets/orders_list_item.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  static String routeName = '/dashboard';

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  List<Order> orders = [];

  @override
  Widget build(BuildContext context) {
    orders = OrderMockData().mockOrders;

    return ScreenUtilInit(
      designSize: const Size(412, 917),
      builder: (context, child) => Scaffold(
        appBar: AppBar(
          surfaceTintColor: null,
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
          actions: [AccountButton()],
        ),
        drawer: Menu(),
        body: CustomScrollView(slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 20.h, 0, 15.h),
                  child: Text(
                    "Rent Equipment",
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 18.sp),
                  ),
                ),
                CarouselSlider(
                    options: CarouselOptions(
                      height: 200.h,
                    ),
                    items: [
                      // SKi
                      dashboardCarouselItem('Skis', EquipmentType.ski,
                          ImagesUrl.skiCarouselImage),
                      dashboardCarouselItem(
                          'Snowboards',
                          EquipmentType.snowboard,
                          ImagesUrl.snowboardCarouselImage),
                      dashboardCarouselItem('Ski Boots', EquipmentType.skiBoots,
                          ImagesUrl.skiBootsCarouselImage),
                      dashboardCarouselItem(
                          'Snowboard Boots',
                          EquipmentType.snowboardBoots,
                          ImagesUrl.snowboardBootsCarouselImage),
                      dashboardCarouselItem('Helmets', EquipmentType.helmet,
                          ImagesUrl.helmetCarouselImage),
                      dashboardCarouselItem('Goggles', EquipmentType.goggle,
                          ImagesUrl.goggleCarouselImage),
                      dashboardCarouselItem('Jackets', EquipmentType.jacket,
                          ImagesUrl.jacketCarouselImage),
                      dashboardCarouselItem('Pants', EquipmentType.pants,
                          ImagesUrl.pantsCarouselImage),
                    ]),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 20.h, 0, 15.h),
                  child: Text(
                    "My Orders",
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 18.sp),
                  ),
                ),
              ],
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
            Order order = orders[index];
            return OrdersListItem(order: order);
          }, childCount: orders.length))
        ]),
      ),
    );
  }

  ClipRRect dashboardCarouselItem(
      String itemName, EquipmentType type, String imageUrl) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, EquipmentScreen.routeName,
                arguments: type);
          },
          child: Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.black.withAlpha(100),
                spreadRadius: 15,
                blurRadius: 6,
              )
            ]),
            constraints: BoxConstraints(
                maxHeight: 200.h,
                minHeight: 200.h,
                maxWidth: 300.w,
                minWidth: 300.w),
            child: Stack(children: [
              Image.network(
                imageUrl,
                width: 300.w,
                height: 200.h,
                fit: BoxFit.cover,
              ),
              Center(
                  child: Text(itemName,
                      style: TextStyle(
                          color: AppColor.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 20.sp,
                          shadows: [
                            Shadow(
                                blurRadius: 4,
                                color: Colors.black.withAlpha(200))
                          ]))),
            ]),
          ),
        ));
  }
}
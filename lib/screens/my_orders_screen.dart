import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:ski_rental/mock_data/order_mock_data.dart';

import '../models/order.dart';
import '../themes/app_color.dart';
import '../widgets/account_button.dart';
import '../widgets/menu.dart';
import '../widgets/orders_list.dart';

class MyOrdersScreen extends StatefulWidget {
  const MyOrdersScreen({super.key});

  static String routeName = '/orders';

  @override
  State<MyOrdersScreen> createState() => _MyOrdersScreenState();
}

class _MyOrdersScreenState extends State<MyOrdersScreen> {
  List<Order> orders = [];

  @override
  Widget build(BuildContext context) {
    orders = OrderMockData().mockOrders;

    return ScreenUtilInit(
      designSize: const Size(412, 917),
      builder: (context, child) =>
          Scaffold(
            appBar: AppBar(
              backgroundColor: AppColor.white,
              foregroundColor: AppColor.primary,
              centerTitle: true,
              title: Text('My Orders',
                  style: TextStyle(
                      fontWeight: FontWeight.w700, fontSize: 32.sp)),
              leading: Builder(builder: (context) {
                return IconButton(
                    onPressed: () => Scaffold.of(context).openDrawer(),
                    icon: Icon(Symbols.menu));
              }),
              actions: [AccountButton()],
            ),
            drawer: Menu(),
            body: Padding(
              padding: EdgeInsets.all(15),
              child: orders.isEmpty ? Center(child: Text('No Orders Yet'),) : OrdersList(orders: orders),),
          ),
    );
  }
}




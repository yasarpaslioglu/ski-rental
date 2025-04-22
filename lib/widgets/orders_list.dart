import 'package:flutter/material.dart';
import 'package:ski_rental/widgets/orders_list_item.dart';

import '../models/order.dart';

class OrdersList extends StatelessWidget {
  const OrdersList({
    super.key,
    required this.orders,
  });

  final List<Order> orders;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: orders.length,
      itemBuilder: (context, index) {
        Order order = orders[index];
        return OrdersListItem(order: order);
      },
    );
  }
}

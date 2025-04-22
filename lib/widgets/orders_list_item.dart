import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../models/equipment.dart';
import '../models/order.dart';

class OrdersListItem extends StatelessWidget {
  const OrdersListItem({
    super.key,
    required this.order,
  });

  final Order order;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 10.h),
      child: Card(
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Text(
                    'Date: ${order.orderDate.month}/${order.orderDate.day}/${order.orderDate.year}',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  Expanded(child: Container()),
                  Text(
                    'Total Price: \$${order.totalPrice}',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Divider(
                height: 10.h,
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: order.items.length,
                itemBuilder: (context, index) {
                  Equipment orderItem = order.items[index];
                  return Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 7.h),
                    child: Card(
                      elevation: 1,
                      child: ListTile(
                        contentPadding:
                        EdgeInsets.symmetric(horizontal: 8.w),
                        title: Row(
                          children: [
                            Container(
                              constraints:
                              BoxConstraints(maxWidth: 250.w),
                              child: Text(
                                orderItem.name,
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14.sp),
                                overflow: TextOverflow.fade,
                              ),
                            ),
                            Expanded(child: Container()),
                            Text(
                              '\$${orderItem.price}',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14.sp),
                              textAlign: TextAlign.right,
                            )
                          ],
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              orderItem.desc,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontSize: 12.sp),
                            ),
                            SizedBox(height: 5.h),
                          ],
                        ),
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(3),
                          child: Container(
                            constraints:
                            BoxConstraints.expand(width: 50.w),
                            child: Image.network(
                              orderItem.imageUrl,
                              width: 50.w,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

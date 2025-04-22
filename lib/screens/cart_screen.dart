import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:ski_rental/mock_data/cart_mock_data.dart';
import 'package:ski_rental/models/equipment.dart';

import '../themes/app_color.dart';
import '../widgets/account_button.dart';
import '../widgets/menu.dart';
import '../widgets/show_date_time_picker.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  static String routeName = '/cart';

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  DateTime pickedDate = DateTime.now();
  late final TextEditingController dateController;
  List<Equipment> cart = [];

  void initializeController() {
    dateController = TextEditingController();
  }

  void disposeController() {
    dateController.dispose();
  }

  @override
  void initState() {
    initializeController();
    super.initState();
  }

  @override
  void dispose() {
    disposeController();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    cart = CartMockData().mockCart;
    double totalPrice = 0;
    for (var cartItem in cart) {
      totalPrice += cartItem.price;
    }

    return ScreenUtilInit(
      designSize: const Size(412, 917),
      builder: (context, child) =>
          Scaffold(
            appBar: AppBar(
              backgroundColor: AppColor.white,
              foregroundColor: AppColor.primary,
              centerTitle: true,
              title: Text('Cart',
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
            bottomNavigationBar: Container(
              decoration: BoxDecoration(
                  color: AppColor.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withAlpha(50),
                        blurRadius: 5,
                        spreadRadius: 3
                    )
                  ]
              ),
              constraints: BoxConstraints(maxHeight: 150.h),
              child: Padding(
                padding: EdgeInsets.fromLTRB(15.w, 15.h, 15.w, 10.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Text('Total Price:', style: TextStyle(color: AppColor.primary, fontWeight: FontWeight.w600, fontSize: 20.sp)),
                        Expanded(child: Container()),
                        Text('\$${totalPrice.toString()}', style: TextStyle(color: AppColor.primary, fontWeight: FontWeight.w600, fontSize: 20.sp))
                      ],
                    ),
                    SizedBox(height: 15.h),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColor.primary,
                          foregroundColor: AppColor.white,
                          elevation: 5,
                          minimumSize: const Size.fromHeight(50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {

                        },
                        child: Text('Checkout', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 17.sp),))                  ],
                ),),
            ),
            body: Padding(
              padding: EdgeInsets.fromLTRB(15.w, 15.h, 15.w, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextField(
                    controller: dateController,
                    textAlignVertical: TextAlignVertical.center,
                    readOnly: true,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 35.w, top: 55.h),
                      labelText: 'Date',
                      prefixIcon: const Icon(Symbols.calendar_month_rounded),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: AppColor.white, width: 0)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: AppColor.white, width: 0)),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: AppColor.white, width: 0)),
                    ),
                    onTap: () {
                      _selectDate();
                    },
                  ),
                  SizedBox(height: 10.h),
                  Expanded(
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: cart.length,
                        itemBuilder: (context, index) {
                          Equipment cartItem = cart[index];
                          return Padding(
                            padding: EdgeInsets.fromLTRB(0, 7.h, 0, 0),
                            child: Card(
                              elevation: 4,
                              child: ListTile(
                                onTap: () => showRemoveFromCartModal(context, cartItem),
                                contentPadding: EdgeInsets.symmetric(horizontal: 8.w),
                                title: Text(
                                  cartItem.name,
                                  overflow: TextOverflow.fade,
                                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14.sp),
                                ),
                                subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        constraints: BoxConstraints(maxHeight: 25.h),
                                        child: Text(cartItem.desc, style: TextStyle(fontSize: 12.sp), overflow: TextOverflow.ellipsis,)),
                                    SizedBox(height: 5.h),
                                    Text('\$${cartItem.price}', style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w600),)
                                  ],
                                ),
                                leading: ClipRRect(
                                  borderRadius: BorderRadius.circular(3),
                                  child: Container(
                                    constraints: BoxConstraints.expand(width: 50.w),
                                    child: Image.network(cartItem.imageUrl,
                                      width: 50.w,
                                      fit: BoxFit.cover,),
                                  ),
                                ),
                                trailing: IconButton(
                                  icon: Icon(Symbols.remove_shopping_cart),
                                  onPressed: () {

                                  },
                                ),
                              ),
                            ),
                          );
                        },
                      ))
                ],
              ),
            ),
          ),
    );
  }

  Future<dynamic> showRemoveFromCartModal(BuildContext context,
      Equipment equipment) {
    return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      isScrollControlled: true,
      useSafeArea: true,
      builder: (context) =>
          DraggableScrollableSheet(
            expand: false,
            builder: (context, scrollController) =>
                SingleChildScrollView(
                  controller: scrollController,
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: Container(
                                    color: AppColor.primary,
                                    constraints: BoxConstraints.tightFor(
                                        width: 500.w),
                                    child: Image.network(equipment.imageUrl),
                                  ),
                                ))
                          ],
                        ),
                        SizedBox(height: 15.h),
                        Text(equipment.name,
                            style:
                            TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 20.sp),
                            textAlign: TextAlign.center),
                        Text('\$${equipment.price.toString()}/hr',
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 12.sp)),
                        SizedBox(height: 15.h),
                        Text(equipment.desc,
                            style: TextStyle(fontSize: 12.sp),
                            textAlign: TextAlign.center),
                        SizedBox(height: 50.h),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColor.primary,
                              foregroundColor: AppColor.white,
                              elevation: 5,
                              minimumSize: const Size.fromHeight(50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            onPressed: () {

                            },
                            child: Text('Remove From Cart'))                      ],
                    ),
                  ),
                ),
          ),
    );
  }

  // select date function for date text field input
  Future<void> _selectDate() async {
    DateTime? picked = await showDateTimePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2100));
    if (picked != null) {
      setState(() {
        var split = picked.toString().split(':');
        var dateAndTime = split[0]
            .substring(0, split[0].length - 2)
            .replaceAll("-", "/");
        dateController.text = dateAndTime;
        pickedDate = picked;
      });
    }
  }
}

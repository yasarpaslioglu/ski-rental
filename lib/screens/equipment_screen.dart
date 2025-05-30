import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:provider/provider.dart';
import 'package:ski_rental/mock_data/equipment_mock_data.dart';
import 'package:ski_rental/models/equipment.dart';
import 'package:ski_rental/providers/date_provider.dart';

import '../themes/app_color.dart';
import '../widgets/account_button.dart';
import '../widgets/menu.dart';
import '../widgets/show_date_time_picker.dart';

class EquipmentScreen extends StatefulWidget {
  const EquipmentScreen({super.key});

  static String routeName = '/equipment';

  @override
  State<EquipmentScreen> createState() => _EquipmentScreenState();
}

class _EquipmentScreenState extends State<EquipmentScreen> {
  late final TextEditingController dateController;
  List<Equipment> equipmentList = [];

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
    final dateProvider = Provider.of<DateProvider>(context);
    dateController.text = dateProvider.dmyFormat();
    final EquipmentType type =
    ModalRoute
        .of(context)!
        .settings
        .arguments as EquipmentType;
    equipmentList = [];
    for (Equipment equipment in EquipmentMockData().fetchEquipment()) {
      if (equipment.type == type) equipmentList.add(equipment);
    }
    return ScreenUtilInit(
      designSize: const Size(412, 917),
      builder: (context, child) =>
          Scaffold(
            appBar: AppBar(
              backgroundColor: AppColor.white,
              foregroundColor: AppColor.primary,
              centerTitle: true,
              title: switch (type) {
                EquipmentType.ski =>
                    Text('Skis',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 32.sp)),
                EquipmentType.snowboard =>
                    Text('Snowboards',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 32.sp)),
                EquipmentType.skiBoots =>
                    Text('Ski Boots',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 32.sp)),
                EquipmentType.snowboardBoots =>
                    Text('Snowboard Boots',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 26.sp)),
                EquipmentType.helmet =>
                    Text('Helmet',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 32.sp)),
                EquipmentType.goggle =>
                    Text('Goggles',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 32.sp)),
                EquipmentType.jacket =>
                    Text('Jackets',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 32.sp)),
                EquipmentType.pants =>
                    Text('Pants',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 32.sp)),
              },
              leading: Builder(builder: (context) {
                return IconButton(
                    onPressed: () => Scaffold.of(context).openDrawer(),
                    icon: Icon(Symbols.menu));
              }),
              actions: [AccountButton()],
            ),
            drawer: Menu(),
            body: Padding(
              padding: EdgeInsets.fromLTRB(15.w, 15.h, 15.w, 0),
              child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
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
                    _selectDate(dateProvider);
                  },
                ),
                SizedBox(height: 10.h),
                Expanded(
                    child: GridView.builder(
                        itemCount: equipmentList.length,
                        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 200.w,
                          childAspectRatio: 4/7.3,
                          crossAxisSpacing: 10.w,
                          mainAxisSpacing: 10.w),
                        itemBuilder: (context, index) {
                          Equipment equipment = equipmentList[index];
                          return GestureDetector(
                            onTap: () {
                              showAddToCartModal(context, equipment);
                            },
                            child: Card(
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(10.w, 10.h, 10.w, 0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(5),
                                      child: Container(
                                        color: AppColor.primary,
                                        width: 180.w,
                                        height: 240.h,
                                        child: Image.network(equipment.imageUrl,
                                        width: 180.w,
                                        height: 240.h,
                                        fit: BoxFit.cover,),
                                      ),
                                    ),
                                    SizedBox(height: 10.h),
                                    Text(equipment.name,
                                      style: TextStyle(fontSize: 11.sp, fontWeight: FontWeight.w600),
                                      maxLines: 2,
                                      softWrap: true,
                                      overflow: TextOverflow.fade),
                                    Expanded(child: Container()),
                                    Row(
                                      children: [
                                        Text('\$${equipment.price}', style: TextStyle(fontSize: 11.sp, fontWeight: FontWeight.w600)),
                                        Expanded(child: Container()),
                                        IconButton(
                                          padding: EdgeInsets.zero,
                                            onPressed: () {

                                            }, icon: Icon(Symbols.add_shopping_cart, size: 20.sp, ))
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        },))
              ]),
            ),
          ),
    );
  }

  Future<dynamic> showAddToCartModal(BuildContext context,
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
                            child: Text('Add to Cart'))
                      ],
                    ),
                  ),
                ),
          ),
    );
  }

  // select date function for date text field input
  Future<void> _selectDate(DateProvider dateProvider) async {
    DateTime? picked = await showDateTimePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2100));
    if (picked != null) {
      setState(() {
        dateProvider.setDate(picked);
      });
    }
  }
}

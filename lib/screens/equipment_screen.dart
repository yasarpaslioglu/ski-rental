import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:ski_rental/mock_data/equipment_mock_data.dart';
import 'package:ski_rental/models/equipment.dart';

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
  DateTime pickedDate = DateTime.now();
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
    final EquipmentType type =
        ModalRoute.of(context)!.settings.arguments as EquipmentType;
    equipmentList = [];
    for (Equipment equipment in EquipmentMockData().fetchEquipment()) {
      if (equipment.type == type) equipmentList.add(equipment);
    }
    return ScreenUtilInit(
      designSize: const Size(412, 917),
      builder: (context, child) => Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.white,
          foregroundColor: AppColor.primary,
          centerTitle: true,
          title: switch (type) {
            EquipmentType.ski => Text('Skis',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 32.sp)),
            EquipmentType.snowboard => Text('Snowboards',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 32.sp)),
            EquipmentType.skiBoots => Text('Ski Boots',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 32.sp)),
            EquipmentType.snowboardBoots => Text('Snowboard Boots',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 26.sp)),
            EquipmentType.helmet => Text('Helmet',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 32.sp)),
            EquipmentType.goggle => Text('Goggles',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 32.sp)),
            EquipmentType.jacket => Text('Jackets',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 32.sp)),
            EquipmentType.pants => Text('Pants',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 32.sp)),
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
                    borderSide: BorderSide(color: AppColor.white, width: 0)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColor.white, width: 0)),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColor.white, width: 0)),
              ),
              onTap: () {
                _selectDate();
              },
            ),
            SizedBox(height: 10.h),
            Expanded(
                child: ListView.builder(
              shrinkWrap: true,
              itemCount: equipmentList.length,
              itemBuilder: (context, index) {
                Equipment equipment = equipmentList[index];
                return Padding(
                  padding: EdgeInsets.fromLTRB(0, 7.h, 0, 0),
                  child: Card(
                    elevation: 4,
                    child: ListTile(
                      onTap: () => showAddToCartModal(context, equipment),
                      contentPadding: EdgeInsets.symmetric(horizontal: 8.w),
                      title: Text(
                        equipment.name,
                        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14.sp),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              constraints: BoxConstraints(maxHeight: 25.h),
                              child: Text(equipment.desc, style: TextStyle(fontSize: 12.sp), overflow: TextOverflow.ellipsis,)),
                          SizedBox(height: 5.h),
                          Text('\$${equipment.price}', style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w600),)
                        ],
                      ),
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(3),
                        child: Container(
                          constraints: BoxConstraints.expand(width: 50.w),
                          child: Image.network(equipment.imageUrl,
                          width: 50.w,
                          fit: BoxFit.cover,),
                        ),
                      ),
                      trailing: IconButton(
                        icon: Icon(Symbols.add_shopping_cart),
                        onPressed: () {
                          showAddToCartModal(context, equipment);
                        },
                      ),
                    ),
                  ),
                );
              },
            ))
          ]),
        ),
      ),
    );
  }

  Future<dynamic> showAddToCartModal(
      BuildContext context, Equipment equipment) {
    return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      isScrollControlled: true,
      useSafeArea: true,
      builder: (context) => DraggableScrollableSheet(
        expand: false,
        builder: (context, scrollController) => SingleChildScrollView(
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
                        TextStyle(fontWeight: FontWeight.w600, fontSize: 20.sp),
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
                    child: Text('Add to Cart'))              ],
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

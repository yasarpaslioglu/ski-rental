import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:provider/provider.dart';
import 'package:ski_rental/providers/UserProvider.dart';
import 'package:ski_rental/screens/change_password_screen.dart';
import 'package:ski_rental/screens/login_screen.dart';

import '../themes/app_color.dart';
import '../widgets/account_button.dart';
import '../widgets/menu.dart';

class AccountSettingScreen extends StatefulWidget {
  const AccountSettingScreen({super.key});

  static String routeName = '/account';

  @override
  State<AccountSettingScreen> createState() => _AccountSettingScreenState();
}

class _AccountSettingScreenState extends State<AccountSettingScreen> {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context).user;
    return ScreenUtilInit(
      designSize: const Size(412, 917),
      builder: (context, child) => Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.white,
          foregroundColor: AppColor.primary,
          centerTitle: true,
          title: Text('Account Settings',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 23.sp)),
          leading: Builder(builder: (context) {
            return IconButton(
                onPressed: () => Scaffold.of(context).openDrawer(),
                icon: Icon(Symbols.menu));
          }),
          actions: [AccountButton()],
        ),
        drawer: Menu(),
        body: Padding(
          padding: EdgeInsets.fromLTRB(20.w, 20.h, 20.r, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                elevation: 3,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Icon(
                        Symbols.account_circle,
                        size: 60.sp,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Username',
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 16.sp),
                          ),
                          Text('someemail1234@gmail.com',
                              style: TextStyle(
                                  fontWeight: FontWeight.w300, fontSize: 12.sp))
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30.h),
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, ChangePasswordScreen.routeName);
                  },
                  child: Text(
                    'Change Password',
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 17.sp),
                  )),
              SizedBox(height: 20.h),
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, LoginScreen.routeName);
                  },
                  child: Text(
                    'Logout',
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 17.sp),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

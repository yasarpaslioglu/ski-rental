import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../themes/app_color.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});
  static String routeName = '/change-password';

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  TextEditingController oldPassController = TextEditingController();
  TextEditingController newPassController = TextEditingController();
  TextEditingController confirmPassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(412, 917),
      builder: (context, child) => Scaffold(
        appBar: AppBar(
          title: Text('Change Password',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 23.sp)),
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(20.w, 20.h, 20.r, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Old Password',
                style: TextStyle(
                    fontWeight: FontWeight.w500, fontSize: 15.sp),
              ),
              TextField(
                controller: oldPassController,
                obscureText: true,
              ),
              SizedBox(height: 40.h),
              Text(
                'New Password',
                style: TextStyle(
                    fontWeight: FontWeight.w500, fontSize: 15.sp),
              ),
              TextField(
                controller: newPassController,
                obscureText: true,
              ),
              SizedBox(height: 40.h),
              Text(
                'Confirm New Password',
                style: TextStyle(
                    fontWeight: FontWeight.w500, fontSize: 15.sp),
              ),
              TextField(
                controller: confirmPassController,
                obscureText: true,
              ),
              SizedBox(height: 40.h),
              Center(
                child: TextButton(
                    onPressed: () {

                    }, child: Container(
                  constraints: BoxConstraints(minWidth: 100.w),
                  decoration: BoxDecoration(
                      color: AppColor.primary,
                      borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 3.h),
                  child: Center(
                    child: Text('Confirm',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 17.sp, color: AppColor.white)),
                  ),
                ), ),
              )
            ],
          ),),
      ),
    );
  }
}

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
  final GlobalKey<FormState> _formKey = GlobalKey();

  late final TextEditingController oldPassController;
  late final TextEditingController newPassController;
  late final TextEditingController confirmPassController;
  final FocusNode focusNodeOldPass = FocusNode();
  final FocusNode focusNodeNewPass = FocusNode();
  final FocusNode focusNodeConfirmPass = FocusNode();

  bool obscurePassword = true;

  void initializeController() {
    oldPassController = TextEditingController();
    newPassController = TextEditingController();
    confirmPassController = TextEditingController();
  }

  void disposeControllers() {
    oldPassController.dispose();
    newPassController.dispose();
    confirmPassController.dispose();
    focusNodeOldPass.dispose();
    focusNodeNewPass.dispose();
    focusNodeConfirmPass.dispose();
  }

  @override
  void initState() {
    initializeController();
    super.initState();
  }

  @override
  void dispose() {
    disposeControllers();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(412, 917),
      builder: (context, child) => Scaffold(
        appBar: AppBar(
          title: Text('Change Password',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 23.sp)),
        ),
        body: Form(
          key: _formKey,
          child: Padding(
            padding: EdgeInsets.fromLTRB(20.w, 40.h, 20.r, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  controller: oldPassController,
                  obscureText: obscurePassword,
                  focusNode: focusNodeOldPass,
                  decoration: InputDecoration(
                    labelText: "Old Password",
                    prefixIcon: const Icon(Icons.password_outlined),
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            obscurePassword = !obscurePassword;
                          });
                        },
                        icon: obscurePassword
                            ? const Icon(Icons.visibility_outlined)
                            : const Icon(Icons.visibility_off_outlined)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  validator: (String? value) {
                    // TODO Old Pass Validator

                    return null;
                  },
                  onEditingComplete: () {
                    focusNodeNewPass.requestFocus();
                  },
                ),
                SizedBox(height: 20.h),
                TextFormField(
                  controller: newPassController,
                  focusNode: focusNodeNewPass,
                  obscureText: obscurePassword,
                  decoration: InputDecoration(
                    labelText: "New Password",
                    prefixIcon: const Icon(Icons.password_outlined),
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            obscurePassword = !obscurePassword;
                          });
                        },
                        icon: obscurePassword
                            ? const Icon(Icons.visibility_outlined)
                            : const Icon(Icons.visibility_off_outlined)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  validator: (String? value) {
                    // TODO New Pass Validator

                    return null;
                  },
                  onEditingComplete: () {
                    focusNodeConfirmPass.requestFocus();
                  },
                ),
                SizedBox(height: 20.h),
                TextFormField(
                  controller: confirmPassController,
                  focusNode: focusNodeConfirmPass,
                  obscureText: obscurePassword,
                  decoration: InputDecoration(
                    labelText: "Confirm New Password",
                    prefixIcon: const Icon(Icons.password_outlined),
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            obscurePassword = !obscurePassword;
                          });
                        },
                        icon: obscurePassword
                            ? const Icon(Icons.visibility_outlined)
                            : const Icon(Icons.visibility_off_outlined)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  validator: (String? value) {
                    // TODO Confirm Pass Validator

                    return null;
                  },
                ),
                SizedBox(height: 40.h),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(50),
                      backgroundColor: AppColor.primary,
                      foregroundColor: AppColor.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {
                      if (_formKey.currentState?.validate() ?? false) {
                        // TODO: update user password

                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            width: 300.w,
                            backgroundColor:
                            Theme.of(context).colorScheme.secondary,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            behavior: SnackBarBehavior.floating,
                            content: const Text("Password Changed Successfully"),
                          ),
                        );

                        _formKey.currentState?.reset();
                        Navigator.pop(context);
                      }
                    },
                    child: const Text("Confirm"),
                  ),
                )
              ],
            ),),
        ),
      ),
    );
  }
}

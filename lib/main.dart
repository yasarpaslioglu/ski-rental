import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ski_rental/providers/UserProvider.dart';
import 'package:ski_rental/screens/account_setting_screen.dart';
import 'package:ski_rental/screens/cart_screen.dart';
import 'package:ski_rental/screens/change_password_screen.dart';
import 'package:ski_rental/screens/dashboard_screen.dart';
import 'package:ski_rental/screens/equipment_screen.dart';
import 'package:ski_rental/screens/login_screen.dart';
import 'package:ski_rental/screens/my_orders_screen.dart';
import 'package:ski_rental/screens/signup_screen.dart';
import 'package:ski_rental/themes/app_color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => UserProvider()),
      ],
      child: MaterialApp(
        title: 'Ski Rental',
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            surfaceTintColor: Colors.transparent,
            shadowColor: Colors.black.withAlpha(100),
            elevation: 5,
          ),
          fontFamily: "Montserrat",
          colorScheme: ColorScheme(
              brightness: Brightness.light,
              primary: AppColor.primary,
              onPrimary: AppColor.white,
              secondary: AppColor.secondary,
              onSecondary: AppColor.white,
              error: Color.fromRGBO(255, 0, 0, 1.0),
              onError: AppColor.white,
              surface: AppColor.white,
              onSurface: AppColor.primary)
        ),
        initialRoute: DashboardScreen.routeName,
        routes: {
          DashboardScreen.routeName : (context) => DashboardScreen(),
          EquipmentScreen.routeName : (context) => EquipmentScreen(),
          CartScreen.routeName : (context) => CartScreen(),
          MyOrdersScreen.routeName : (context) => MyOrdersScreen(),
          AccountSettingScreen.routeName : (context) => AccountSettingScreen(),
          ChangePasswordScreen.routeName : (context) => ChangePasswordScreen(),
          LoginScreen.routeName : (context) => LoginScreen(),
          SignupScreen.routeName : (context) => SignupScreen(),
        },
      ),
    );
  }
}



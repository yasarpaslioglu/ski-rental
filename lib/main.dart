import 'package:flutter/material.dart';
import 'package:ski_rental/screens/dashboard_screen.dart';
import 'package:ski_rental/screens/equipment_screen.dart';
import 'package:ski_rental/themes/app_color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ski Rental',
      theme: ThemeData(
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
      },
    );
  }
}



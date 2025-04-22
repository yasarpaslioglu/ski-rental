import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:ski_rental/screens/account_setting_screen.dart';

import '../themes/app_color.dart';

class AccountButton extends StatelessWidget {
  const AccountButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          Navigator.pushNamed(context, AccountSettingScreen.routeName);
        },
        icon: Icon(Symbols.account_circle,
            color: AppColor.primary, weight: 700));
  }
}
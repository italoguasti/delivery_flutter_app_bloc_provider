// Singleton
import 'package:dw_delivery_app/app/core/ui/styles/colors_app.dart';
import 'package:flutter/material.dart';

import 'text_styles.dart';

class AppStyles {
  static AppStyles? _instance;

  AppStyles._();

  static AppStyles get i {
    _instance ??= AppStyles._();
    return _instance!;
  }

  ButtonStyle get primaryButton => ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.0),
        ),
        backgroundColor: ColorsApp.i.primary,
        textStyle: TextStyles.i.textButtonLabel,
      );
}

extension AppStyleExtensions on BuildContext {
  AppStyles get appStyles => AppStyles.i;
}

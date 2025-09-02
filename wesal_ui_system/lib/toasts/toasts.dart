import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class LoadingToast {
  static TransitionBuilder initToast(
    Widget Function(BuildContext, Widget?)? builder,
  ) {
    return EasyLoading.init(builder: builder);
  }

  static void show() {
    EasyLoading.show(
      maskType: EasyLoadingMaskType.black,
      indicator: const CircularProgressIndicator(),
    );
  }

  static void dismiss() {
    EasyLoading.dismiss();
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';

import '../theme/constant.dart';

loadingProgress() {
  showDialog(
    barrierDismissible: false,
    builder: (ctx) {
      return WillPopScope(
        onWillPop: () async {
          return false;
        },
        child: Center(
          child: Container(
            height: 80,
            width: 80,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: primaryColor,
            ),
            child: SpinKitThreeBounce(
              size: 30,
              itemBuilder: (BuildContext context, int index) {
                return const DecoratedBox(
                  decoration: BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                );
              },
            ),
          ),
        ),
      );
    },
    context: Get.context!,
  );
}

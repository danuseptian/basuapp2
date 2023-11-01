import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:get/get.dart';

warningDialog({required String message}) {
  AwesomeDialog(
    context: Get.context!,
    keyboardAware: true,
    headerAnimationLoop: false,
    dismissOnBackKeyPress: false,
    dialogType: DialogType.warning,
    animType: AnimType.bottomSlide,
    btnOkText: "Ok",
    title: message,
    btnOkOnPress: () {},
  ).show();
}

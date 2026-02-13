import 'package:dio/dio.dart';
import 'package:family_bottom_sheet/family_bottom_sheet.dart';
import 'package:flutter_platform_alert/flutter_platform_alert.dart';
import 'package:flutter_vibrate/flutter_vibrate.dart';

import './app_colors.dart';
import '/utils/extensions.dart';
import 'package:flutter/material.dart';
// import 'package:dw_image_picker/dw_image_picker.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class Utils {
  static NumberFormat commaFormat = NumberFormat('###,###,###', 'en_US');

  //   static Future<List<dynamic>?> pickImages() async {
  //     List<DWPickerItem> images = await DWImagePicker().openPicker(
  //       cropping: true,
  //       pickerOptions: const DWPickerOptions(
  //         mediaType: MediaType.image,
  //         numberOfColumn: 4,
  //         maxSelectedAssets: 9,
  //         minSelectedAssets: 1,
  //         convertHeicToJPG: true,
  //         compressFormat: CompressFormat.jpg,
  //         compressQuality: .5,
  //       ),
  //     );
  //     return (images.isEmpty) ? null : images;
  //   }
}

void printWrapped(String? text) {
  final pattern = RegExp('.{1,800}'); // 800 is the size of each chunk
  pattern.allMatches(text ?? '').forEach((match) => debugPrint(match.group(0)));
}

String encodeMap(Map<String, dynamic> data) {
  return Transformer.urlEncodeMap(data);
}

Widget get divider => Divider(
  height: 1,
  thickness: .8,
  color: AppColors.darkestGrey.withValues(alpha: .8),
);

Future<void> openFamilySheet({
  required BuildContext context,
  required Widget Function(BuildContext) content,
}) async {
  await FamilyModalSheet.showMaterialDefault<void>(
    context: context,
    contentBackgroundColor: context.colors.surface,
    safeAreaMinimum: const EdgeInsets.only(bottom: 32, left: 16, right: 16),
    backgroundColor: AppColors.black.withValues(alpha: .4),
    mainContentBorderRadius: BorderRadius.circular(32),
    constraints: BoxConstraints(maxHeight: context.height * .9),
    builder: (ctx) {
      return content(ctx);
    },
  );
}

Future<dynamic> appBottomModalSheet({
  required BuildContext context,
  required Widget child,
  bool expand = true,
  isDismissible = true,
  Radius? topRadius,
  Color? barrierColor,
  bool showBarrier = false,
  bool enableDrag = true,
}) async {
  return await showCupertinoModalBottomSheet(
    expand: expand,
    context: context,
    isDismissible: isDismissible,
    barrierColor: showBarrier
        ? barrierColor ?? AppColors.black.withValues(alpha: .4)
        : null,
    topRadius: topRadius ?? const Radius.circular(16),
    backgroundColor: context.scaffoldColor,
    enableDrag: enableDrag,
    builder: (context) => child,
  );
}

Future<AlertButton> showError({
  String title = 'Error',
  String msg = 'Sorry, an error occurred',
}) async {
  Vibrate.feedback(FeedbackType.error);
  return await FlutterPlatformAlert.showAlert(
    windowTitle: title,
    text: msg,
    alertStyle: AlertButtonStyle.ok,
    iconStyle: IconStyle.none,
  );
}

Future<void> showSuccess({
  String title = 'Success',
  String msg = 'Successful!',
}) async {
  Vibrate.feedback(FeedbackType.success);
  await FlutterPlatformAlert.showAlert(
    windowTitle: title,
    text: msg,
    alertStyle: AlertButtonStyle.ok,
    iconStyle: IconStyle.none,
  );
}

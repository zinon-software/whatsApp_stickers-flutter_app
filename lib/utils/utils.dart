import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_stickers/flutter_whatsapp_stickers.dart';

void processResponse({
  required StickerPackResult action,
  required bool result,
  required String error,
  required BuildContext context,
  required Function successCallback,
}) {
  print("_listener");
  print(action);
  print(result);
  print(error);

  SnackBar? snackBar;

  switch (action) {
    case StickerPackResult.SUCCESS:
    case StickerPackResult.ADD_SUCCESSFUL:
    case StickerPackResult.ALREADY_ADDED:
      successCallback();
      break;
    case StickerPackResult.CANCELLED:
      snackBar = SnackBar(content: Text('تم إلغاء تثبيت حزمة الملصقات'));
      break;
    case StickerPackResult.ERROR:
      snackBar = SnackBar(content: Text(error));
      break;
    case StickerPackResult.UNKNOWN:
      snackBar = SnackBar(content: Text('خطأ غير معروف - تحقق من السجلات'));
      break;
  }

  // عرض SnackBar إذا كان هناك رسالة
  if (snackBar != null) {
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}

import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:provider/provider.dart';
import 'package:stickers_app/modals/InstallStickersModal.dart';
import 'package:stickers_app/modals/StickerListModal.dart';
import 'package:stickers_app/screens/SplashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => StickerListModel()),
        ChangeNotifierProvider(create: (_) => InstallStickersModal()),
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'ملصقات عصرية للواتساب',
        theme: ThemeData(
          primaryColor: Colors.green,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: SplashScreen(),
      ),
    );
  }
}

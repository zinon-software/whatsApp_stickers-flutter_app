import 'package:admob_flutter/admob_flutter.dart';
import 'package:esys_flutter_share/esys_flutter_share.dart';
import 'package:flutter/material.dart';
import 'package:stickers_app/Ads_state/adsManager.dart';
import 'package:stickers_app/screens/StickerList.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ملصقات عصرية',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              icon: Icon(
                Icons.share,
                color: Colors.grey,
              ),
              onPressed: () {
                Share.text(
                    'شارك التطبيق',
                    'https://play.google.com/store/apps/details?id=com.zainon.stickers_app',
                    'text/plain');
              }),
          IconButton(
              icon: Icon(
                Icons.star_rate,
                color: Colors.grey,
              ),
              onPressed: () {
                _launchURL();
              }),
        ],
      ),
      body: StickerList(),
      bottomNavigationBar: Container(
        child: AdmobBanner(
          adUnitId: AdsManager.bannerAdUnitId,
          adSize: AdmobBannerSize.SMART_BANNER(context),
        ),
      ),
    );
  }

  _launchURL() async {
    const url =
        'https://play.google.com/store/apps/details?id=com.zainon.stickers_app';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'تعذر الإطلاق $url';
    }
  }
}

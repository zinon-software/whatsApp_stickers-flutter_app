import 'package:esys_flutter_share_plus/esys_flutter_share_plus.dart';
import 'package:flutter/material.dart';
import 'package:stickers_app/screens/StickerList.dart';
import 'package:url_launcher/url_launcher.dart';

import '../ads_state/ads_manager.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late AdsManager _adsManager;

  @override
  void initState() {
    _adsManager = AdsManager();

    super.initState();
    _adsManager.loadBannerAd();
  }

  @override
  void dispose() {
    _adsManager.disposeBannerAds();
    super.dispose();
  }

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
        child: _adsManager.getBannerAdWidget(),
      ),
    );
  }

  _launchURL() async {
    const url =
        'https://play.google.com/store/apps/details?id=com.zainon.stickers_app';
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'تعذر الإطلاق $url';
    }
  }
}

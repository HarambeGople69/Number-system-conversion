import 'package:Number_Conversion/Learn_pages/learn_octal_to_binary.dart';
import 'package:Number_Conversion/Learn_pages/learn_octal_to_decimal.dart';
import 'package:Number_Conversion/Learn_pages/learn_octal_to_hexadecimal.dart';
// import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// const String testDevice = "YOUR_DEVICE_ID";

class Learn_Octal extends StatefulWidget {
  @override
  _Learn_OctalState createState() => _Learn_OctalState();
}

class _Learn_OctalState extends State<Learn_Octal> {
  // static final MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
  //     testDevices: testDevice != null ? <String>[testDevice] : null,
  //     keywords: <String>['wallpapers', 'walls', 'amoled']);

//   InterstitialAd _interstitialAd;

//   InterstitialAd createInterstitialAd() {
//     // ca-app-pub-4410703780041827/5641671932
//     return InterstitialAd(
//         adUnitId: "ca-app-pub-4624789056859901/7241231042",
        
// // ca-app-pub-4624789056859901/7241231042
//         // targetingInfo: targetingInfo,
//         listener: (MobileAdEvent event) {
//           print("InterstitialAd event : $event");
//         });
//   }

  // @override
  // void dispose() {
  //   // ignore: todo
  //   // TODO: implement dispose
  //   super.dispose();
  //   _interstitialAd?.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
              height: ScreenUtil().setHeight(50),
            ),
                  
            InkWell(
                onTap: () {
                  //  _interstitialAd?.dispose();
                  //       _interstitialAd = createInterstitialAd()..load();
                  //       _interstitialAd?.show();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                    return learn_octal_to_binary();
                  }));
                },
                child: learn_section("O", "Octal to Binary")),
            SizedBox(
              height: ScreenUtil().setHeight(10),
            ),
            InkWell(
                onTap: () {
                  //  _interstitialAd?.dispose();
                  //       _interstitialAd = createInterstitialAd()..load();
                  //       _interstitialAd?.show();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                    return learn_octal_to_decimal();
                  }));
                },
                child: learn_section("O", "Octal to Decimal")),
            SizedBox(
              height: ScreenUtil().setHeight(10),
            ),
            InkWell(
                onTap: () {
                  //  _interstitialAd?.dispose();
                  //       _interstitialAd = createInterstitialAd()..load();
                  //       _interstitialAd?.show();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                    return learn_octal_to_hexadecimal();
                  }));
                },
                child: learn_section("O", "Octal to Hexadecimal")),
            
      ],
    );
  }

  Widget learn_section(String symbol, String title) {
    return Container(
      height: ScreenUtil().setHeight(60),
      width: ScreenUtil().setWidth(340),
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 10,
            offset: Offset(2, 4))
      ]),
      margin: EdgeInsets.all(ScreenUtil().setSp(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              height: ScreenUtil().setHeight(60),
              width: ScreenUtil().setWidth(60),
              child: Center(
                  child: Text(
                "$symbol",
                style: TextStyle(
                    fontSize: ScreenUtil().setSp(35), color: Color(0xfff96060)),
              ))),
          Text(
            "$title",
            style: TextStyle(
                fontSize: ScreenUtil().setSp(20), color: Color(0xfff96060)),
          ),
          SizedBox(
            width: ScreenUtil().setWidth(10),
          )
        ],
      ),
    );
  }
}

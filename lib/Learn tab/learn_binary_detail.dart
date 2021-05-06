import 'package:Number_Conversion/Learn_pages/learn_binary_to_decimal.dart';
import 'package:Number_Conversion/Learn_pages/learn_binary_to_hexadecimal.dart';
import 'package:Number_Conversion/Learn_pages/learn_binary_to_octal.dart';
// import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// const String testDevice = "YOUR_DEVICE_ID";

class Learn_Binary extends StatefulWidget {
  @override
  _Learn_BinaryState createState() => _Learn_BinaryState();
}

class _Learn_BinaryState extends State<Learn_Binary> {
 


  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        height: ScreenUtil().setHeight(50),
      ),
      InkWell(
          onTap: () {
            // _interstitialAd?.dispose();
            //       _interstitialAd = createInterstitialAd()..load();
            //       _interstitialAd?.show();
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return learn_binary_to_decimal();
            }));
          },
          child: learn_section("B", "Binary to Decimal")),
      SizedBox(
        height: ScreenUtil().setHeight(10),
      ),
      InkWell(
          onTap: () {
            // _interstitialAd?.dispose();
            //       _interstitialAd = createInterstitialAd()..load();
            //       _interstitialAd?.show();
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return learn_binary_to_octal();
            }));
          },
          child: learn_section("B", "Binary to Octal")),
      SizedBox(
        height: ScreenUtil().setHeight(10),
      ),
      InkWell(
          onTap: () {
            // _interstitialAd?.dispose();
            //       _interstitialAd = createInterstitialAd()..load();
            //       _interstitialAd?.show();
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return learn_binary_to_hexadecimal();
            }));
          },
          child: learn_section("B", "Binary to Hexadecimal")),
      SizedBox(
        height: ScreenUtil().setHeight(10),
      )
    ]);
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

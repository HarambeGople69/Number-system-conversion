import 'package:Number_Conversion/Learn%20tab/learn_binary_detail.dart';
import 'package:Number_Conversion/Learn%20tab/learn_decimal_detail.dart';
import 'package:Number_Conversion/Learn%20tab/learn_hexadecimal_detail.dart';
import 'package:Number_Conversion/Learn%20tab/learn_octal_detail.dart';


// import 'package:Number_Conversion/services/ads.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// const String testDevice = "YOUR_DEVICE_ID";

class Learn extends StatefulWidget {
  @override
  _LearnState createState() => _LearnState();
}

class _LearnState extends State<Learn> {
  // static final MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
  //     testDevices: testDevice != null ? <String>[testDevice] : null,
  //     keywords: <String>['wallpapers', 'walls', 'amoled']);

  // InterstitialAd _interstitialAd;

  // InterstitialAd createInterstitialAd() {
  //   return InterstitialAd(
  //       adUnitId: InterstitialAd.testAdUnitId,
  //       targetingInfo: targetingInfo,
  //       listener: (MobileAdEvent event) {
  //         print("InterstitialAd $event");
  //       });
  // }

  // @override
  // void dispose() {
  //   // ignore: todo
  //   // TODO: implement dispose
  //   super.dispose();
  //   _interstitialAd.dispose();
  // }

  List<Widget> display = [
    Learn_Binary(),
    Learn_Decimal(),
    Learn_Octal(),
    Learn_Hexadecimal()
  ];

  @override
  Widget build(BuildContext context) {
    // ScreenUtil.init(context,
    //     designSize: Size(360, 740), allowFontScaling: false);
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Color(0xffffff7f7),
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(ScreenUtil().setHeight(120)),
            child: AppBar(
              backgroundColor: Color(0xfff96060),
              title: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                    'Learn',
                    style: TextStyle(
                      fontSize: ScreenUtil().setSp(25),
                    ),
                  )),
              centerTitle: true,
              elevation: 0,
              bottom: TabBar(
                  labelPadding: EdgeInsets.all(ScreenUtil().setSp(5)),
                  labelStyle: TextStyle(fontSize: ScreenUtil().setSp(16)),
                  labelColor: Colors.white,
                  indicatorColor: Colors.white,
                  tabs: [
                    Tab(
                      text: "Binary",
                    ),
                    Tab(
                      text: "Decimal",
                    ),
                    Tab(
                      text: "Octal",
                    ),
                    Tab(
                      text: "Hexa",
                    ),
                  ]),
            )),
        body: TabBarView(children: display),
         
        )
      );
    
  }
}

//   // ignore: non_constant_identifier_names
//   Widget learn_section(String symbol, String title) {
//     return Container(
//       height: ScreenUtil().setHeight(60),
//       width: ScreenUtil().setWidth(340),
//       decoration: BoxDecoration(color: Colors.white, boxShadow: [
//         BoxShadow(
//             color: Colors.black.withOpacity(0.2),
//             spreadRadius: 5,
//             blurRadius: 10,
//             offset: Offset(2, 4))
//       ]),
//       margin: EdgeInsets.all(ScreenUtil().setSp(15)),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Container(
//               height: ScreenUtil().setHeight(60),
//               width: ScreenUtil().setWidth(60),
//               child: Center(
//                   child: Text(
//                 "$symbol",
//                 style: TextStyle(
//                     fontSize: ScreenUtil().setSp(35), color: Color(0xfff96060)),
//               ))),
//           Text(
//             "$title",
//             style: TextStyle(
//                 fontSize: ScreenUtil().setSp(20), color: Color(0xfff96060)),
//           ),
//           SizedBox(
//             width: ScreenUtil().setWidth(10),
//           )
//         ],
//       ),
//     );
//   }
// }

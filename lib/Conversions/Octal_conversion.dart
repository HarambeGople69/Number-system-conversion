import 'package:Number_Conversion/main_brain/decimal_to_binary_conversion.dart';
import 'package:Number_Conversion/main_brain/decimal_to_hexadecimal_conversion.dart';
import 'package:Number_Conversion/main_brain/octal_to_decimal_conversion.dart';
// import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../DataContainer.dart';

// const String testDevice = "YOUR_DEVICE_ID";

// ignore: camel_case_types
class Octal_conversion extends StatefulWidget {
  @override
  _Octal_conversionState createState() => _Octal_conversionState();
}

// ignore: camel_case_types
class _Octal_conversionState extends State<Octal_conversion> {
  TextEditingController _controller = new TextEditingController();

  // ignore: non_constant_identifier_names
  var InputValue;

  var binary = "0.0";

  var decimal = 0.0;

  var hexadecimal = "0.0";

  var fixedprecision;

  // ignore: non_constant_identifier_names
  String OctToDecString;
  // static final MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
  //     testDevices: testDevice != null ? <String>[testDevice] : null,
  //     keywords: <String>['wallpapers', 'walls', 'amoled']);

  // InterstitialAd _interstitialAd;

  // InterstitialAd createInterstitialAd() {
  //   return InterstitialAd(
  //       adUnitId: "ca-app-pub-4624789056859901/7241231042",
  //       // targetingInfo: targetingInfo,
  //       listener: (MobileAdEvent event) {
  //         print("InterstitialAd event : $event");
  //       });
  // }

  // @override
  // void dispose() {
  //   // ignore: todo
  //   // TODO: implement dispose
  //   super.dispose();
  //   _interstitialAd?.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    // ScreenUtil.init(context,
    //     designSize: Size(360, 740), allowFontScaling: false);
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(
            left: ScreenUtil().setSp(20), right: ScreenUtil().setSp(20)),
        child: Column(
          children: [
            SizedBox(
              height: ScreenUtil().setHeight(65),
            ),
            Text(
              "Enter Octal number down below:",
              style: TextStyle(
                  fontSize: ScreenUtil().setSp(20),
                  fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(15),
            ),
            TextField(
              onChanged: (String value) {
                setState(() {
                  InputValue = value;
                });
              },
              controller: _controller,
              style: TextStyle(fontSize: ScreenUtil().setSp(19)),
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.symmetric(
                    vertical: ScreenUtil().setWidth(10),
                    horizontal: ScreenUtil().setHeight(10)),
                prefixIcon: Icon(
                  Icons.edit,
                  size: ScreenUtil().setSp(20),
                ),
                labelText: "Octal number",
                helperText: "Octal number contains 0 1 2 3 4 5 6 7",
                helperMaxLines: 2,
                labelStyle: TextStyle(fontSize: ScreenUtil().setSp(20)),
                helperStyle: TextStyle(
                    color: Colors.grey[600], fontSize: ScreenUtil().setSp(13)),
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(15),
            ),
            DataContainer(name: "Binary: ", classes: "$binary"),
            SizedBox(
              height: ScreenUtil().setHeight(15),
            ),
            DataContainer(name: "Decimal: ", classes: "$decimal"),
            SizedBox(
              height: ScreenUtil().setHeight(15),
            ),
            DataContainer(name: "Hexadecimal: ", classes: "$hexadecimal"),
            SizedBox(
              height: ScreenUtil().setHeight(15),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // =================Convert ============//
                SizedBox(
                  // Mero mobile ma
                  // width: MediaQuery.of(context).size.width * 0.25,
                  // Mamu ko mobile ma
                  width: ScreenUtil().setWidth(110),
                  height: ScreenUtil().setHeight(50),
                  child: new RaisedButton(
                    color: Colors.grey[200],
                    onPressed: () {
                      // _interstitialAd?.dispose();
                      //   _interstitialAd = createInterstitialAd()..load();
                      //   _interstitialAd?.show();
                      setState(() {
                        decimal = Octal_to_decimal_conversion(InputValue);
                        OctToDecString = decimal.toString();
                        binary = decimal_to_binary_conversion(OctToDecString);
                        hexadecimal =
                            decimal_to_hexadecimal_conversion(OctToDecString);
                      });
                    },
                    child: Text(
                      'Convert',
                      style: TextStyle(
                          fontSize: ScreenUtil().setSp(19),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),

                // =========================Detail=========================//

                // SizedBox(
                //   // Mero mobile ma
                //   // width: MediaQuery.of(context).size.width * 0.25,
                //   // Mamu ko mobile ma
                //   width: ScreenUtil().setWidth(105),
                //   height: ScreenUtil().setSp(50),
                //   child: new RaisedButton(
                //     color: Colors.grey[200],
                //     onPressed: () {},

                //         child: Text(
                //           'Detail',
                //           style: TextStyle(
                //             fontSize: ScreenUtil().setSp(19),
                //             fontWeight: FontWeight.bold
                //           ),
                //         )),
                //   ),

                // =================== Clear ===================//

                SizedBox(
                  // Mero mobile ma
                  // width: MediaQuery.of(context).size.width * 0.25,
                  // Mamu ko mobile ma
                  width: ScreenUtil().setWidth(105),
                  height: ScreenUtil().setHeight(50),
                  child: new RaisedButton(
                    color: Colors.grey[200],
                    onPressed: () {
                      setState(() {
                        _controller.clear();
                        binary = "0.0";
                        decimal = 0.0;
                        hexadecimal = "0.0";
                      });
                    },
                    child: Text(
                      'Clear',
                      style: TextStyle(
                          fontSize: ScreenUtil().setSp(19),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
            // SizedBox(height: ScreenUtil().setHeight(60),),
          ],
        ),
      ),
    );
  }
}

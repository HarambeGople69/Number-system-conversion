import 'package:Number_Conversion/main_brain/binary_to_decimal_conversion.dart';
import 'package:Number_Conversion/main_brain/decimal_to_hexadecimal_conversion.dart';
import 'package:Number_Conversion/main_brain/decimal_to_octal_conversion.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../DataContainer.dart';

// ignore: camel_case_types
class Binary_conversion extends StatefulWidget {
  @override
  _Binary_conversionState createState() => _Binary_conversionState();
}

// ignore: camel_case_types
class _Binary_conversionState extends State<Binary_conversion> {
  TextEditingController _controller = new TextEditingController();
  // ignore: non_constant_identifier_names
  var InputValue;
  var decimal = 0.0;
  var octal = "0.0";
  var hexadecimal = "0.0";
  String binToDecString;

  @override
  Widget build(BuildContext context) {
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
              "Enter Binary number down below:",
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
                labelText: "Binary number",
                helperText: "Binary number contains either 0 or 1",
                helperMaxLines: 2,
                labelStyle: TextStyle(fontSize: ScreenUtil().setSp(20)),
                helperStyle: TextStyle(
                    color: Colors.grey[600], fontSize: ScreenUtil().setSp(13)),
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(15),
            ),
            DataContainer(
              name: "Decimal: ",
              classes: "$decimal",
            ),
            SizedBox(
              height: ScreenUtil().setHeight(15),
            ),
            DataContainer(name: "Octal: ", classes: "$octal"),
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
                  width: ScreenUtil().setWidth(110),
                  height: ScreenUtil().setHeight(50),
                  child: new RaisedButton(
                      color: Colors.grey[200],
                      onPressed: () {
                        setState(() {
                          decimal = Binary_to_decimal_conversion(InputValue);
                          binToDecString = decimal.toString();

                          octal = decimal_to_octal_conversion(binToDecString);
                          hexadecimal =
                              decimal_to_hexadecimal_conversion(binToDecString);
                        });
                      },
                      child: Text(
                        'Convert',
                        style: TextStyle(
                            fontSize: ScreenUtil().setSp(18),
                            fontWeight: FontWeight.bold),
                      )),
                ),

                // =================== Clear ===================//

                SizedBox(
                  width: ScreenUtil().setWidth(105),
                  height: ScreenUtil().setHeight(50),
                  child: new RaisedButton(
                    color: Colors.grey[200],
                    onPressed: () {
                      setState(() {
                        _controller.clear();
                        decimal = 0.0;
                        octal = "0.0";
                        hexadecimal = "0.0";
                      });
                    },
                    child: Text(
                      'Clear',
                      style: TextStyle(
                          fontSize: ScreenUtil().setSp(18),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

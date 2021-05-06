import 'package:Number_Conversion/Conversions/Binary_conversion.dart';
import 'package:Number_Conversion/Conversions/Decimal_conversion.dart';
import 'package:Number_Conversion/Conversions/Hexadecimal_conversion.dart';
import 'package:Number_Conversion/Conversions/Octal_conversion.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class Conversion extends StatefulWidget {
  @override
  _ConversionState createState() => _ConversionState();
}

class _ConversionState extends State<Conversion> {

  List<Widget> display = [
    Binary_conversion(),
    Decimal_conversion(),
    Octal_conversion(),
    Hexadecimal_conversion(),
  ];

  @override
  Widget build(BuildContext context) {
    // ScreenUtil.init(context,
    //     designSize: Size(360, 740), allowFontScaling: false);
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Color(0xffffff7f7),

        appBar:PreferredSize(
          preferredSize: Size.fromHeight(ScreenUtil().setHeight(120)),
        child:AppBar(
          
          backgroundColor: Color(0xfff96060),
          title: FittedBox(
              fit: BoxFit.fitWidth,
              child: Text(
                'Number Conversion',
                style: TextStyle(
                  fontSize: ScreenUtil().setSp(25),
                ),
              )),
          centerTitle: true,
          elevation: 0,
          
          bottom: TabBar(
            
            labelPadding: EdgeInsets.all(ScreenUtil().setSp(5)),
            labelStyle: TextStyle(
              fontSize: ScreenUtil().setSp(16)
            
              
            ),
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
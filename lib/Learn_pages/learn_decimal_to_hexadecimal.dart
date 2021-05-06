import 'package:Number_Conversion/Learn_main_brain/learn_number_conversion_decimal_to_hexdecimal.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: camel_case_types
class learn_decimal_to_hexadecimal extends StatefulWidget {
  @override
  _learn_decimal_to_hexadecimalState createState() => _learn_decimal_to_hexadecimalState();
}

// ignore: camel_case_types
class _learn_decimal_to_hexadecimalState extends State<learn_decimal_to_hexadecimal> {
  TextEditingController _controller = new TextEditingController();
  // ignore: non_constant_identifier_names
  String InputValue = "";
  // ignore: non_constant_identifier_names
  String Textbody = "";

  // @override
  // void initState() {
  //   // ignore: todo
  // ignore: todo
  //   // TODO: implement initState
  //   super.initState();
  //   AdMobServices.HideHomeBannerAd();
  // }

  @override
  Widget build(BuildContext context) {
    // ScreenUtil.init(context,
    //     designSize: Size(360, 740), allowFontScaling: false);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(ScreenUtil().setHeight(120)),
        child: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              size: ScreenUtil().setSp(30),
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          backgroundColor: Color(0xfff96060),
          title: FittedBox(
              fit: BoxFit.fitWidth,
              child: Text(
                'Learn',
                style: TextStyle(
                  fontSize: ScreenUtil().setSp(30),
                ),
              )),
          centerTitle: true,
          elevation: 0,
          
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(ScreenUtil().setSp(15)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  height: ScreenUtil().setHeight(55),
                ),
              Center(
                  child: Text(
                "Decimal to Hexadecimal conversion",
                style: TextStyle(
                  fontSize: ScreenUtil().setSp(25),
                  decoration: TextDecoration.underline,
                  fontWeight: FontWeight.bold
                ),
              )),
              SizedBox(
                height: ScreenUtil().setHeight(10),
              ),
              Text(
                "In decimal number system, we use 10 digits: 0,1,2,3,4,5,6,7,8 and 9. So, decimal number implies base 10.\nIn hexadecimal number system, we use 10 digits and 6 english alphabet letters: 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, A, B, C, D, E, F. So, hexadecimal number implies base 16.",
                style: TextStyle(fontSize: ScreenUtil().setSp(20)),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(10),
              ),
              Divider(
                thickness: 2,
              ),
              SizedBox(
                height: ScreenUtil().setHeight(10),
              ),
              Text(
                "To convert decimal number integer part into hexadecimal, divide the number by 16 and record the remainder. Then divide the result of this division again by 16 and so on until the result of the division is zero.\nTo get the hexadecimal of the fractional part, we  have to multipy fractional part by 16 and take the integer part before the decimal point as result. Then the remaining fraction part will be again multiplied by 16.",
                style: TextStyle(fontSize: ScreenUtil().setSp(20)),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(10),
              ),
              Divider(
                thickness: 2,
              ),
              SizedBox(
                height: ScreenUtil().setHeight(10),
              ),
              Text(
                "Enter Decimal number down below:",
                style: TextStyle(
                    fontSize: ScreenUtil().setSp(20),
                    fontWeight: FontWeight.w800),
              ),
              SizedBox(
                height: ScreenUtil().setSp(15),
              ),
              TextField(
                onSubmitted: (String value) {
                  setState(() {
                    InputValue = value;

                    Textbody = learn_number_conversion_of_decimal_to_hexadecimal(
                        InputValue).toString();
                    print(Textbody);
                  });
                },
                controller: _controller,
                style: TextStyle(
                fontSize: ScreenUtil().setSp(19)
              ),
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(
                      vertical: ScreenUtil().setWidth(15),
                      horizontal: ScreenUtil().setHeight(10)),
                  prefixIcon: Icon(
                    Icons.edit,
                    size: ScreenUtil().setSp(20),
                  ),
                  
                  labelText: "Decimal number",
                  helperText: "Decimal number contains 0 1 2 3 4 5 6 7 8 9",
                  helperMaxLines: 2,
                  labelStyle: TextStyle(fontSize: ScreenUtil().setSp(20)),
                  helperStyle: TextStyle(
                      color: Colors.grey[600],
                      fontSize: ScreenUtil().setSp(16)),
                ),
              ),
              SizedBox(
                height: ScreenUtil().setSp(20),
              ),
              (InputValue != null)
                  ? Column(
                      children: [
                        
                        
                        SizedBox(height: ScreenUtil().setHeight(15),),
                        (Textbody!="")?
                        RichText(text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(text: "Convert ($InputValue)\u2081\u2080 to hexadecimal system\n\n",
                          style: TextStyle(fontSize: ScreenUtil().setSp(25),
                          fontWeight: FontWeight.w700,color: Colors.black),
                          ),
                              TextSpan(text: "$Textbody",style: TextStyle(
                                fontSize: ScreenUtil().setSp(20),
                                color: Colors.black,
                                letterSpacing: 1.5
                              ))
                          ]
                        ))

                        // Text(Textbody,style: TextStyle(
                        //   fontSize: ScreenUtil().setSp(18)
                          
                        :
                        Container()
                      ],
                    )
                  : Container()
            ],
          ),
        ),
      ),
    );
  }
}
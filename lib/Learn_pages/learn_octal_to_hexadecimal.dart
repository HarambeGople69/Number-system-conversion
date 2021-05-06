import 'package:Number_Conversion/Learn_main_brain/learn_number_conversion_decimal_to_hexdecimal.dart';
import 'package:Number_Conversion/Learn_main_brain/learn_number_conversion_of_octal_to_decimal.dart';
import 'package:Number_Conversion/main_brain/decimal_to_hexadecimal_conversion.dart';
import 'package:Number_Conversion/main_brain/octal_to_decimal_conversion.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: camel_case_types
class learn_octal_to_hexadecimal extends StatefulWidget {
  @override
  _learn_octal_to_hexadecimalState createState() => _learn_octal_to_hexadecimalState();
}

// ignore: camel_case_types
class _learn_octal_to_hexadecimalState extends State<learn_octal_to_hexadecimal> {
  TextEditingController _controller = new TextEditingController();
  // ignore: non_constant_identifier_names
  String InputValue = "";
  // ignore: non_constant_identifier_names
  String Textbody = "";
  double decimalInt;
  String decimal = "";
  // ignore: non_constant_identifier_names
  String TextbodyFinal = "";

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
                "Octal to Hexadecimal conversion",
                style: TextStyle(
                    fontSize: ScreenUtil().setSp(25),
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.bold),
              )),
              SizedBox(
                height: ScreenUtil().setHeight(10),
              ),
              Text(
                "In octal number system, we use 8 digits: 0, 1, 2, 3, 4, 5, 6, 7. So, octal number implies base 8.\nIn hexadecimal number system, we use 10 digits and 6 english alphabet letters: 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, A, B, C, D, E, F. So, hexadecimal number implies base 16.",
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
                "To convert number from octal number system to the hexadecimal number system, we first have to convert the octal number into the decimal form. Then convert  this decimal number into the hexadecimal form.",
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
                "Enter Octal number down below:",
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
                    // decimalInt = Binary_to_decimal_conversion(InputValue);
                    decimalInt = Octal_to_decimal_conversion(InputValue);

                    decimal = decimalInt.toString();

                    // Textbody =
                    //     learn_number_conversion_of_binary_to_decimal(InputValue)
                    //         .toString();
                    Textbody =
                        learn_number_conversion_of_octal_to_decimal1(InputValue)
                            .toString();
                    TextbodyFinal =
                        learn_number_conversion_of_decimal_to_hexadecimal(decimal);

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
                  
                  labelText: "Octal number",
                  helperText: "Octal number contains 0 1 2 3 4 5 6 7",
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
                        
                        SizedBox(
                          height: ScreenUtil().setHeight(15),
                        ),
                        (Textbody != "")
                            ? RichText(
                                text: TextSpan(children: <TextSpan>[
                                  TextSpan(
                                  text:
                                      "Step 1: Convert ($InputValue)\u2088 to decimal system\n\n",
                                  style: TextStyle(
                                      fontSize: ScreenUtil().setSp(25),
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black),
                                ),
                                TextSpan(
                                    text: "$Textbody",
                                    style: TextStyle(
                                        fontSize: ScreenUtil().setSp(20),
                                        color: Colors.black,
                                        letterSpacing: 1.5)),
                                TextSpan(
                                  text:
                                      "\n\nStep 2: Convert ($decimal)\u2081\u2080 to hexadecimal system\n\n",
                                  style: TextStyle(
                                      fontSize: ScreenUtil().setSp(25),
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black),
                                ),
                                TextSpan(
                                    text: "$TextbodyFinal",
                                    style: TextStyle(
                                        fontSize: ScreenUtil().setSp(20),
                                        color: Colors.black,
                                        letterSpacing: 1.5)),

                                TextSpan(
                                    text: "\n\n($InputValue)\u2088 = (${decimal_to_hexadecimal_conversion(decimal)})\u2081\u2086",
                                    style: TextStyle(
                                        fontSize: ScreenUtil().setSp(25),
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: 1.5)),
                              ]))

                            // Text(Textbody,style: TextStyle(
                            //   fontSize: ScreenUtil().setSp(18)

                            : Container()
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
import 'package:Number_Conversion/Learn_main_brain/learn_number_conversion_decimal_to_octal.dart';
import 'package:Number_Conversion/Learn_main_brain/learn_number_conversion_of_binary_to_decimal.dart';
import 'package:Number_Conversion/main_brain/binary_to_decimal_conversion.dart';
import 'package:Number_Conversion/main_brain/decimal_to_octal_conversion.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: camel_case_types
class learn_binary_to_octal extends StatefulWidget {
  @override
  _learn_binary_to_octalState createState() => _learn_binary_to_octalState();
}

// ignore: camel_case_types
class _learn_binary_to_octalState extends State<learn_binary_to_octal> {
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
                "Binary to Octal conversion",
                style: TextStyle(
                    fontSize: ScreenUtil().setSp(25),
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.bold),
              )),
              SizedBox(
                height: ScreenUtil().setHeight(10),
              ),
              Text(
                "In binary number system, we use only 2 digits: 0 and 1. So, binary number implies base 2.\nIn octal number system, we use 8 digits: 0, 1, 2, 3, 4, 5, 6, 7. So, octal number implies base 8.",
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
                "To convert number from binary number system to the octal number system, we first have to convert the binary number into the decimal form. Then convert  this decimal number into the octal form.",
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
                "Enter Binary number down below:",
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
                    decimalInt = Binary_to_decimal_conversion(InputValue);
                    decimal = decimalInt.toString();

                    Textbody =
                        learn_number_conversion_of_binary_to_decimal(InputValue)
                            .toString();
                    TextbodyFinal =
                        learn_number_conversion_of_decimal_to_octal(decimal);

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
                  
                  labelText: "Binary number",
                  helperText: "Binary number contains either 0 or 1",
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
                                      "Step 1: Convert ($InputValue)\u2082 to decimal system\n\n",
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
                                      "\n\nStep 2: Convert ($decimal)\u2081\u2080 to octal system\n\n",
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
                                    text: "\n\n($InputValue)\u2082 = (${decimal_to_octal_conversion(decimal)})\u2088",
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

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:math_expressions/math_expressions.dart';

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String calculation = "";
  String result = "";
  @override
  Widget build(BuildContext context) {
    // ScreenUtil.init(context,
    //     designSize: Size(360, 740), allowFontScaling: false);

    void equalPressed() {
      Parser p = Parser();
      Expression exp = p.parse(calculation);
      ContextModel cm = ContextModel();
      double eval = exp.evaluate(EvaluationType.REAL, cm);
      result = eval.toString();
    }

    return Scaffold(
      backgroundColor: Color(0xffffff7f7),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(ScreenUtil().setHeight(120)),
        child: AppBar(
          title: FittedBox(
              fit: BoxFit.fitWidth,
              child: Text(
                'Calculator',
                style: TextStyle(
                  fontSize: ScreenUtil().setSp(30),
                ),
              )),
          centerTitle: true,
          elevation: 0,
          
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
           SizedBox(height: ScreenUtil().setHeight(50),),
          Expanded(
              child: Container(
            margin: EdgeInsets.all(ScreenUtil().setSp(10)),
            decoration: BoxDecoration(
                border: Border.all(width: ScreenUtil().setSp(2)),
                borderRadius:
                    BorderRadius.all(Radius.circular(ScreenUtil().setSp(15)))),
            child: Center(
                child: Text(
              "$calculation",
              style: TextStyle(fontSize: ScreenUtil().setSp(20)),
            )),
          )),
          Container(
              margin: EdgeInsets.all(ScreenUtil().setSp(5)),
              padding: EdgeInsets.all(ScreenUtil().setSp(4)),
              width: ScreenUtil().setWidth(360),
              height: ScreenUtil().setHeight(60),
              child: Row(
                children: [
                  Text(
                    "Result:",
                    style: TextStyle(fontSize: ScreenUtil().setSp(25)),
                  ),
                  SizedBox(
                    width: ScreenUtil().setWidth(25),
                  ),
                  Expanded(
                      child: Text(
                    "$result",
                    style: TextStyle(fontSize: ScreenUtil().setSp(25)),
                  ))
                ],
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                  onTap: () {
                    setState(() {
                      calculation = "";
                      result = "";
                    });
                  },
                  child: MyButtons("C", Colors.white, Color(0xffff02e2e))),
              InkWell(
                  onTap: () {
                    setState(() {
                      calculation =
                          calculation.substring(0, calculation.length - 1);
                    });
                  },
                  child: MyButtons("DEL", Colors.white, Color(0xffff02e2e))),
              InkWell(
                  onTap: () {
                    setState(() {
                      calculation += "%";
                    });
                  },
                  child: MyButtons("%", Colors.white, Color(0xffff02e2e))),
              InkWell(
                  onTap: () {
                    setState(() {
                      calculation += "/";
                      print(calculation);
                    });
                  },
                  child: MyButtons("/", Colors.white, Color(0xffff02e2e))),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                  onTap: () {
                    setState(() {
                      calculation += "9";
                    });
                  },
                  child: MyButtons("9", Colors.white, Color(0xffff02e2e))),
              InkWell(
                  onTap: () {
                    setState(() {
                      calculation += "8";
                    });
                  },
                  child: MyButtons("8", Colors.white, Color(0xffff02e2e))),
              InkWell(
                  onTap: () {
                    setState(() {
                      calculation += "7";
                    });
                  },
                  child: MyButtons("7", Colors.white, Color(0xffff02e2e))),
              InkWell(
                  onTap: () {
                    setState(() {
                      calculation += "*";
                    });
                  },
                  child: MyButtons("*", Colors.white, Color(0xffff02e2e))),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                  onTap: () {
                    setState(() {
                      calculation += "6";
                    });
                  },
                  child: MyButtons("6", Colors.white, Color(0xffff02e2e))),
              InkWell(
                  onTap: () {
                    setState(() {
                      calculation += "5";
                    });
                  },
                  child: MyButtons("5", Colors.white, Color(0xffff02e2e))),
              InkWell(
                  onTap: () {
                    setState(() {
                      calculation += "4";
                    });
                  },
                  child: MyButtons("4", Colors.white, Color(0xffff02e2e))),
              InkWell(
                  onTap: () {
                    setState(() {
                      calculation += "-";
                    });
                  },
                  child: MyButtons("-", Colors.white, Color(0xffff02e2e))),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                  onTap: () {
                    setState(() {
                      calculation += "3";
                    });
                  },
                  child: MyButtons(
                    "3",
                    Colors.white,
                    Color(0xffff02e2e),
                  )),
              InkWell(
                  onTap: () {
                    setState(() {
                      calculation += "2";
                    });
                  },
                  child: MyButtons("2", Colors.white, Color(0xffff02e2e))),
              InkWell(
                  onTap: () {
                    setState(() {
                      calculation += "1";
                    });
                  },
                  child: MyButtons("1", Colors.white, Color(0xffff02e2e))),
              InkWell(
                  onTap: () {
                    setState(() {
                      calculation += "+";
                    });
                  },
                  child: MyButtons("+", Colors.white, Color(0xffff02e2e))),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                  onTap: () {
                    setState(() {
                      calculation += "0";
                    });
                  },
                  child: MyButtons("0", Colors.white, Color(0xffff02e2e))),
              InkWell(
                  onTap: () {
                    setState(() {
                      calculation += ".";
                    });
                  },
                  child: MyButtons(".", Colors.white, Color(0xffff02e2e))),
              InkWell(
                  onTap: () {
                    setState(() {
                      calculation += "00";
                    });
                  },
                  child: MyButtons("00", Colors.white, Color(0xffff02e2e))),
              InkWell(
                  onTap: () {
                    setState(() {
                      equalPressed();
                    });
                  },
                  child: MyButtons("=", Colors.white, Color(0xffff02e2e))),
            ],
          ),
           

        ],
      ),
    );
  }
  // ignore: non_constant_identifier_names
  Container MyButtons(String text, Color color, Color textColor) {
    return Container(
      margin: EdgeInsets.all(ScreenUtil().setSp(4)),
      padding: EdgeInsets.all(ScreenUtil().setSp(5)),
      height: ScreenUtil().setHeight(50),
      width: ScreenUtil().setHeight(70),
      decoration: BoxDecoration(
        color: color,
        border: Border.all(width: ScreenUtil().setSp(2)),
        borderRadius: BorderRadius.all(Radius.circular(ScreenUtil().setSp(15))),
      ),
      child: Center(
          child: Text(
        text,
        style: TextStyle(fontSize: ScreenUtil().setSp(20), color: textColor),
      )),
    );
  }
}

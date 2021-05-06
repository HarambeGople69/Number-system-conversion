import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:url_launcher/url_launcher.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  
  @override
  Widget build(BuildContext context) {
    // ScreenUtil.init(context,
    //     designSize: Size(360, 740), allowFontScaling: false);
    return Scaffold(
        backgroundColor: Color(0xffffff7f7),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(ScreenUtil().setHeight(120)),
          child: AppBar(
            backgroundColor: Color(0xfff96060),
            title: FittedBox(
                fit: BoxFit.fitWidth,
                child: Text(
                  'About',
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
            padding: EdgeInsets.all(ScreenUtil().setSp(20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 SizedBox(
                  height: ScreenUtil().setHeight(30),
                ),
                Center(
                    child: Text(
                  "Number Conversion",
                  style: TextStyle(
                      fontSize: ScreenUtil().setSp(30),
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline),
                )),
                SizedBox(
                  height: ScreenUtil().setHeight(10),
                ),
                Card(
                  elevation: ScreenUtil().setSp(3),
                  child: Padding(
                    padding: EdgeInsets.all(ScreenUtil().setSp(8)),
                    child: Text(
                      "This app is designed and developed with the intention of helping you with number conversion and also help you learn how number is converted from one system to other with detail explanation. You can learn through learn tap where we have categorized sections for your simplicity.",
                      style: TextStyle(
                          fontSize: ScreenUtil().setSp(20),
                          // letterSpacing: ScreenUtil().setSp(1)
                          ),
                    ),
                  ),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(15),
                ),

                Card(
                  elevation: ScreenUtil().setSp(3),
                  child: Container(
                    padding: EdgeInsets.all(ScreenUtil().setSp(8)),
                    child: Text(
                      "This is the first app we have developed so it may have some flaws and not standup to your expectation. If you want to suggest or help us develop user friendly mobile apps feel free to contact us.",
                      style: TextStyle(
                          fontSize: ScreenUtil().setSp(20),
                          // fontWeight: FontWeight.w900,
                          // letterSpacing: ScreenUtil().setSp(1)
                          ),
                    ),
                  ),
                ),

                // SizedBox(
                //   height: ScreenUtil().setHeight(15),
                // ),

                // Center(
                //   child: SizedBox(
                //     width: ScreenUtil().setWidth(255),
                //     height: ScreenUtil().setSp(60),
                //     child: new RaisedButton.icon(
                //       color: Color(0xffffff7f7),
                //       onPressed: () {
                //         launch(
                //             "mailto:tsvshrsth@gmail.com?subject=test%20subject&body=test%20body");
                //       },
                //       icon: Icon(
                //         Icons.email,
                //         size: ScreenUtil().setSp(40),
                //         color: Color(0xfff96060),
                //       ),
                //       label: Text(
                //         'Contact Us',
                //         style: TextStyle(
                //           fontSize: ScreenUtil().setSp(25),
                //           fontWeight: FontWeight.bold,
                //           color: Color(0xfff96060),
                //         ),
                //       ),
                //     ),
                //   ),
                // ),

                // Center(
                //   child: Container(
                //     decoration: BoxDecoration(
                //       border: Border.all(width: ScreenUtil().setSp(2))
                //     ),
                //     child: RaisedButton.icon(

                //       color: Theme.of(context).primaryColor,
                //       onPressed: (){},
                //       icon: Icon(Icons.email),
                //       label: Text("Contact us",style: TextStyle(
                //         color: Color(0xfff96090),
                //         fontSize: ScreenUtil().setSp(20)
                //       ),)),
                //   ),
                // ),
                SizedBox(
                  height: ScreenUtil().setHeight(15),
                ),
                Card(
                  elevation: ScreenUtil().setSp(3),
                  child: Column(
                    children: [
                      Center(
                          child: Padding(
                        padding: EdgeInsets.all(ScreenUtil().setSp(8)),
                        child: Text(
                          "Do you want to support us?",
                          style: TextStyle(
                            fontSize: ScreenUtil().setSp(24),
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      )),
                      Padding(
                        padding: EdgeInsets.all(ScreenUtil().setSp(8)),
                        child: Text(
                          "Just share it with your friends. If possible rate our app.",
                          style: TextStyle(
                            fontSize: ScreenUtil().setSp(20),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
            

              ],
            ),
          ),
        ));
  }
}

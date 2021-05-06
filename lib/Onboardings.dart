import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'homepage.dart';



class Onboardings extends StatefulWidget {
  @override
  _OnboardingsState createState() => _OnboardingsState();
}

class _OnboardingsState extends State<Onboardings> {

  PageController _controller = PageController();
  int currentPage = 0;
  String des1 = "This app is designed to help you with number conversion.";
  String des2 =
      "You give a number to the app. Then, the app converts the number to desired number system. See how the number is being converted in Learn section.";
  String des3 =
      "If you have any queries regarding this app you can contact or mail us through About section of this app.";

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        
        systemNavigationBarColor: Color(0xfff96060),
        systemNavigationBarIconBrightness: Brightness.light));
    
     return Scaffold(
      body: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                height: ScreenUtil().setHeight(20),
              ),
              Container(
                margin:
                    EdgeInsets.symmetric(horizontal: ScreenUtil().setHeight(5)),
                width: ScreenUtil().setWidth(360),
                height: ScreenUtil().setHeight(460),
                child: PageView(
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  controller: _controller,
                  children: [
                    OnBoardingChange(
                        "onboard1", "Welcome to Number Convertor", des1),
                    OnBoardingChange("onboard2", "How does it work?", des2),
                    OnBoardingChange("onboard3",
                        "Any queries? Feel free to contact us", des3),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
              left: 0,
              right: 0,
              bottom: ScreenUtil().setHeight(240),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(3, (index) => generateRow(index)),
              )),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                width: ScreenUtil().setWidth(360),
                height: ScreenUtil().setHeight(200),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("asset/image/path.png"),
                      fit: BoxFit.fill),
                ),
                child: Center(
                    child: (currentPage == 2)
                        ? Center(
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: (context) => HomePage()));
                               
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: ScreenUtil().setWidth(15),
                                    horizontal: ScreenUtil().setHeight(35)),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.3),
                                          spreadRadius: ScreenUtil().setSp(5),
                                          blurRadius: ScreenUtil().setSp(10),
                                          offset: Offset(ScreenUtil().setSp(2),
                                              ScreenUtil().setSp(4)))
                                    ]),
                                child: Text(
                                  "Get Started",
                                  style: TextStyle(
                                      fontSize: ScreenUtil().setSp(25),
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                            ),
                          )
                        : Container()),
              ))
        ],
      ),
    );
  }

  AnimatedContainer generateRow(int index) {
    return AnimatedContainer(
      margin: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(5)),
      duration: Duration(milliseconds: 100),
      height: ScreenUtil().setHeight(11),
      width: (currentPage == index)
          ? ScreenUtil().setWidth(20)
          : ScreenUtil().setWidth(10),
      decoration: BoxDecoration(
          borderRadius:
              BorderRadius.all(Radius.circular(ScreenUtil().setSp(15))),
          color: (currentPage == index) ? Colors.black : Colors.grey),
    );
  }

  // ignore: non_constant_identifier_names
  Column OnBoardingChange(String image, String title, String description) {
    return Column(
      children: [
        SizedBox(
          height: ScreenUtil().setHeight(20),
        ),
        Container(
          width: ScreenUtil().setWidth(270),
          height: ScreenUtil().setHeight(230),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("asset/image/$image.png"), fit: BoxFit.fill),
          ),
        ),
        SizedBox(
          height: ScreenUtil().setHeight(20),
        ),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: ScreenUtil().setSp(24),
            fontWeight: FontWeight.w800,
          ),
        ),
        SizedBox(
          height: ScreenUtil().setHeight(10),
        ),
        Text(
          description,
          textAlign: TextAlign.center,
          style:
              TextStyle(fontSize: ScreenUtil().setSp(17), color: Colors.grey),
        ),
      ],
    );
  }
}
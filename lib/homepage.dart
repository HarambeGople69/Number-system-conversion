import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Tabs/About.dart';
import 'Tabs/Calculator.dart';
import 'Tabs/Conversion.dart';
import 'Tabs/Learn.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 

  

  int currentIndex = 0;
  // ignore: non_constant_identifier_names
  Widget show_page = Conversion();

  Widget check_postion(int index) {
    switch (index) {
      case 0:
        return Conversion();
        break;
      case 1:
        return Learn();
        break;
      case 2:
        return Calculator();
        break;
      case 3:
        return About();
        break;
      default:
    }
  }


 

  @override
  Widget build(BuildContext context) {
    
    
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Color(0xfff96060),
        
        systemNavigationBarColor: Color(0xfff96060),
        systemNavigationBarIconBrightness: Brightness.light));
    return WillPopScope(
      onWillPop: () {
        return showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text(
              "Warning",
              style: TextStyle(fontSize: ScreenUtil().setSp(30)),
            ),
            content: Text(
              "Are you sure you want to exit?",
              style: TextStyle(fontSize: ScreenUtil().setSp(25)),
            ),
            actions: [
              FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop(true);
                  },
                  child: Text(
                    "Yes",
                    style: TextStyle(
                        fontSize: ScreenUtil().setSp(25),
                        color: Color(0xfff96060)),
                  )),
              FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop(false);
                  },
                  child: Text(
                    "No",
                    style: TextStyle(
                        fontSize: ScreenUtil().setSp(25),
                        color: Color(0xfff96060)),
                  )),
            ],
          ),
        );
      },
      child: Container(
        child: Scaffold(
          body: show_page,
          bottomNavigationBar: BottomNavigationBar(
            
              selectedItemColor: Theme.of(context).primaryColor,
              unselectedItemColor: Colors.grey[500],
              selectedIconTheme: IconThemeData(size: ScreenUtil().setSp(20)),
              unselectedIconTheme: IconThemeData(size: ScreenUtil().setSp(20)),
              onTap: (value) {
                setState(() {
                  currentIndex = value;
                  show_page = check_postion(currentIndex);
                });
              },
              currentIndex: currentIndex,
              items: [
                BottomNavigationBarItem(
                  
                    icon: Icon(Icons.home),
                    title: Text(
                      "Home",
                      style: TextStyle(fontSize: ScreenUtil().setSp(15)),
                    ),
                    
                    ),
                BottomNavigationBarItem(
                    icon: FaIcon(FontAwesomeIcons.book),
                    title: Text(
                      "Learn",
                      style: TextStyle(fontSize: ScreenUtil().setSp(15)),
                    )),
                BottomNavigationBarItem(
                    icon: FaIcon(FontAwesomeIcons.calculator),
                    title: Text(
                      "Calculator",
                      style: TextStyle(fontSize: ScreenUtil().setSp(15)),
                    )),
                BottomNavigationBarItem(
                    icon: FaIcon(FontAwesomeIcons.questionCircle),
                    title: Text(
                      "About",
                      style: TextStyle(fontSize: ScreenUtil().setSp(15)),
                    )),
              ]),
        ),
      ),
    );
  }
}

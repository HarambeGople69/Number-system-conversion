import 'package:clipboard/clipboard.dart'; 
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class DataContainer extends StatelessWidget {
  const DataContainer({
    Key key,
    @required this.name,
    @required this.classes,
    // @required this.buttonTapped
  }) : super(key: key);

  final String name;
  final String classes;
  // final buttonTapped;

  @override
  Widget build(BuildContext context) {
    // ScreenUtil.init(context,
    //     designSize: Size(360, 740), allowFontScaling: false);
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: ScreenUtil().setSp(2)),
        borderRadius: BorderRadius.all(Radius.circular(ScreenUtil().setSp(5))),
      ),
      height: ScreenUtil().setHeight(60),
      // width: ScreenUtil().setWidth(width),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(ScreenUtil().setSp(4)),
            // child: Text(
            //   "$name",
            //   style: TextStyle(fontSize: 20),
            // ),
            child: FittedBox(
                fit: BoxFit.fitWidth,
                child: Text(
                  "$name",
                  style: TextStyle(
                      fontSize: ScreenUtil().setSp(20), color: Colors.black),
                )),
          ),
          Expanded(
              child: Text(
            "$classes",
            style: TextStyle(fontSize: ScreenUtil().setSp(20)),
          )),
          IconButton(
            icon: Icon(
              Icons.content_copy,
              size: ScreenUtil().setSp(25),
            ),
            onPressed: () async {
              await FlutterClipboard.copy(classes.toString());
              Scaffold.of(context)
                  .showSnackBar(SnackBar(content: Text("Copied to clipboard")));
            
            },
          ),
          SizedBox(
            width: ScreenUtil().setWidth(5),
          )
        ],
      ),
    );
  }
}

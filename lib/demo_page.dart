


import 'package:flutter/material.dart';
import 'package:flutter_pop_window_demo/pop_window_widget.dart';

class DemoPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {

    return DemoPageState();
  }

}

class DemoPageState extends State<DemoPage> {
  @override
  Widget build(BuildContext context) {

    return Material(
      color: Colors.lightBlueAccent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          showGlobalPopWindow(),
          SizedBox(
            height: 50,
          ),
          showBelowPopWindow(),
        ],
      ),
    );
  }

  Widget showBelowPopWindow(){
    return PopupWindowWidget(

      pressCallBack: (){

      },
      windowDismiss: (){

      },
      barrierColor: Color.fromRGBO(34, 34, 34, 0.3),
      elevation: 0,
      isLocalToGlobal: false,
      //globalOffset: Offset(0,100),///全局定位
      offset: Offset.zero,///相对于child定位
//      offset: Offset(showFloatHeader ? getWidthPx(266): getWidthPx(174),
//          getHeightPx(260)),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: Colors.black),
          color: Colors.white,
        ),
        child: Text("与child上边对齐"),
      ),
      window: Container(
        width: 100,
        height: 100,
        color: Colors.white,
        alignment: Alignment.center,
        child: Text("我是弹窗内容",style: TextStyle(color: Colors.black,fontSize: 15),),
      ),
    );
  }

  Widget showGlobalPopWindow(){

    return PopupWindowWidget(

      pressCallBack: (){

      },
      windowDismiss: (){

      },
      barrierColor: Color.fromRGBO(34, 34, 34, 0.3),
      elevation: 0,
      isLocalToGlobal: true,
      globalOffset: Offset(0,100),
//      offset: Offset(showFloatHeader ? getWidthPx(266): getWidthPx(174),
//          getHeightPx(260)),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: Colors.black),
          color: Colors.white,
        ),
        child: Text("全局弹窗，在左上角"),
      ),
      window: Container(
        width: 200,
        height: 200,
        color: Colors.white,
        alignment: Alignment.center,
        child: Text("我是弹窗内容",style: TextStyle(color: Colors.black,fontSize: 15),),
      ),
    );

  }


}


















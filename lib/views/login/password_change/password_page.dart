import 'package:flustars/flustars.dart';

import 'package:flutter/material.dart';

import 'package:fluro/fluro.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart' as PasswordScreen;

import 'package:flutter_wechat/constant/constant.dart';

import 'package:flutter_wechat/routers/routers.dart';

class PasswordPage extends StatefulWidget {
  PasswordPage({Key key}) : super(key: key);

  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<PasswordPage> {

  static String _passwordKey = 'Passwordkey';
  bool _closeBtnHighlight = true;
  static TextEditingController _fistPassController =  TextEditingController();
    @override
    Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.only(top: 44, left: 24),
        child: _buildWidges(),
      ),
     );
   }
   Widget _buildWidges() {
     var header = _headerWidge();
     var space = _spaceWidges();
     var inputWidge = _buildInputWidges();
    return Column(
      verticalDirection: VerticalDirection.down,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[header, space, inputWidge],
    );
   }
   Widget _spaceWidges() {
     return Container(
      width: 100,
      margin: EdgeInsets.only(top:30),
      height: 40,
      padding: EdgeInsets.only(top: 10, bottom: 10,left: 0),
      child: Text(
       '填写密码',
        textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
            fontWeight: FontWeight.bold
          ),
        ),
     );
   }
   Widget _headerWidge() {
     return ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(22)),
        child: Container(
          padding: EdgeInsets.only(left: 12),
          height: 44,
          constraints: BoxConstraints(minHeight: 44),
          alignment: Alignment.centerLeft,
          width: 44,
          color: Colors.cyanAccent,
          child: InkWell(
            hoverColor: Colors.grey,
            child: Image.asset(
              Constant.assetsImagesLogin +
                  (_closeBtnHighlight
                      ? 'wsactionsheet_close_normal_16x16.png'
                      : 'wsactionsheet_close_press_16x16.png'),
              width: 20.0,
              height: 20.0,
            ),
            onHighlightChanged: (highlight){
              this.setState(() {
                _closeBtnHighlight = highlight;
              });
            },
            onTap:() {
              Navigator.of(context).pop();
            },
          ),
        ),
      );
   }
    Widget _buildInputWidges() {
      var textField = TextField(
        key: Key(_passwordKey),
        controller: _fistPassController,
        style: TextStyle(fontSize: 12, color: Colors.green),
        cursorColor: Colors.green,
        focusNode: FocusNode(),
       );
      return Container(
        padding: EdgeInsets.all(20),
        color: Colors.green,
        height: 90,
        child: ListView(
          children: <Widget>[
            Container(
              width: PasswordScreen.ScreenUtil.screenWidth,
              height: 50,
              color: Colors.red,
              child: textField,
            )

          ],
        ),
      );
    }
}
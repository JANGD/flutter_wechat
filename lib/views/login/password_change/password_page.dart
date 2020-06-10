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
    @override
    Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: buildHeaderInputWidges(),
      ),
     );
   }
    Widget buildHeaderInputWidges() {
      return Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: <Widget>[
            Container(
              width: PasswordScreen.ScreenUtil.screenWidth,
              height: 200,
              child: Text('测试'),
            )

          ],
        ),
      );
    }
}
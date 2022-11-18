import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:product_stock_app/screen/main_page.dart';

void main() async {
  SystemChrome.setPreferredOrientations(
          [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight])
      .then((_) {
    runApp(login_page());
  });
}

TextEditingController userController = TextEditingController();
TextEditingController passController = TextEditingController();
String? _error;
bool _visiblePassword = false;
String? _formkey;

class login_page extends StatefulWidget {
  const login_page({Key? key}) : super(key: key);

  @override
  State<login_page> createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD5F6FF),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'เข้าสู่ระบบคลังวัตถุดิบ',
              style: TextStyle(
                fontSize: 120.0,
                fontWeight: FontWeight.bold,
                color: Color(0xFF005DFF),
              ),
            ),
            SizedBox(
              height: 200.0,
            ),
            Text(
              'ชื่อผู้ใช้งาน',
              style: TextStyle(
                fontSize: 50.0,
                fontWeight: FontWeight.w500,
                color: Color(0xFF005DFF),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 900.0, left: 900.0),
              child: TextField(
                controller: userController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0)),
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.blue,
                  ),
                  hintText: 'กรุณาใส่ชื่อผู้ใช้',
                ),
              ),
            ),
            SizedBox(
              height: 200.0,
            ),
            Text(
              'รหัสผ่าน',
              style: TextStyle(
                fontSize: 60.0,
                fontWeight: FontWeight.w400,
                color: Color(0xFF005DFF),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 900.0, left: 900.0),
              child: TextField(
                controller: passController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0)),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.blue,
                  ),
                  hintText: 'กรุณาใส่รหัสผ่าน',

                ),
              ),
            ),
            SizedBox(
              height: 250.0,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 900.0, left: 900.0),
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.lightBlue),
                  textStyle: MaterialStateProperty.all(
                    TextStyle(color: Colors.white),
                  ),
                ),
                onPressed: () async {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const main_page(),
                    ),
                  );
                },
                child: Text(
                  'เข้าสู่ระบบ',
                  style: TextStyle(color: Colors.white, fontSize: 50.0),
                ),
              ),
            ),
            // RaisedButton(
            //   padding: const EdgeInsets.only(
            //       top: 50.0, right: 700.0, left: 700.0, bottom: 50.0),
            //   textColor: Colors.white,
            //   color: Colors.blue,
            //   shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.all(Radius.circular(500.0))),
            //   onPressed: () {
            //     Navigator.of(context).push(
            //       MaterialPageRoute(
            //         builder: (context) => const main_page(),
            //       ),
            //     );
            //   },
            //   child: Text(
            //     'เข้าสู่ระบบ',
            //     style: TextStyle(
            //       fontSize: 50.0,
            //       fontWeight: FontWeight.bold,
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

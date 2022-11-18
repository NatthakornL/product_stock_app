import 'package:flutter/material.dart';


class searchstock_page extends StatefulWidget {
  @override
  _searchstock_pageState createState() => _searchstock_pageState();
}

class _searchstock_pageState extends State<searchstock_page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Color(0xffD5F6FF),
          body: Center(
              child: Column(children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Text(
              'ออเดอร์ที่กำลังดำเนินการ',
              style: TextStyle(
                fontSize: 80.0,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30, right: 290, top: 50),
              child: Table(
                border: TableBorder.all(),
                columnWidths: {
                  0: FractionColumnWidth(.10),
                  1: FractionColumnWidth(.30),
                  2: FractionColumnWidth(.40),
                  3: FractionColumnWidth(.15),
                  4: FractionColumnWidth(.13)
                },
                children: [
                  TableRow(children: [
                    Column(children: [
                      Text(
                        'ลำดับ',
                        style: TextStyle(
                          fontSize: 80,
                        ),
                      ),
                    ]), //ลำดับ
                    Column(children: [
                      Text(
                        'เลขที่',
                        style: TextStyle(
                          fontSize: 80,
                        ),
                      ),
                    ]), //เลขที่
                    Column(children: [
                      Text(
                        'ลูกค้า',
                        style: TextStyle(
                          fontSize: 80,
                        ),
                      ),
                    ]), //ลูกค้า
                    Column(children: [
                      Text(
                        'ลงเรือ*',
                        style: TextStyle(
                          fontSize: 80,
                        ),
                      ),
                    ]), //ลงเรือ
                    Column(children: [
                      Text(
                        'การกระทำ',
                        style: TextStyle(
                          fontSize: 80,
                        ),
                      ),
                    ]), //การกระทำ
                  ]),
                ],
              ),
            ),
          ]))),
    );
  }
}

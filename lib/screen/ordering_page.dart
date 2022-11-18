import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:product_stock_app/screen/orderdetail_page.dart';

class ordering_page extends StatefulWidget {
  @override
  _ordering_pageState createState() => _ordering_pageState();
}

class _ordering_pageState extends State<ordering_page> {
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
              color: Colors.white70,
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
                  TableRow(children: [
                    Column(children: [
                      Text(
                        '1',
                        style: TextStyle(
                          fontSize: 70,
                        ),
                      ),
                    ]), //ลำดับ
                    Column(children: [
                      Text(
                        'KYB-P2200463',
                        style: TextStyle(
                          fontSize: 70,
                        ),
                      ),
                    ]), //เลขที่
                    Column(children: [
                      Text(
                        'Naverma S.A.',
                        style: TextStyle(
                          fontSize: 70,
                        ),
                      ),
                    ]), //ลูกค้า
                    Column(children: [
                      Text(
                        '28/0/65',
                        style: TextStyle(
                          fontSize: 70,
                        ),
                      ),
                    ]), //ลงเรือ
                    Column(children: [
                      TextButton(
                        style: TextButton.styleFrom(
                          textStyle: const TextStyle(
                            fontSize: 50,
                            backgroundColor: Colors.red,
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const orderdetail_page(),
                            ),
                          );
                        },
                        child: const Text(
                          'จ่ายสินค้า',
                          style: TextStyle(color: Colors.white),
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

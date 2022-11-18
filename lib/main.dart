import 'package:flutter/material.dart';
import 'package:product_stock_app/screen/login_page.dart';

import 'package:product_stock_app/screen/main_page.dart';
import 'package:product_stock_app/screen/ordering_page.dart';
import 'package:product_stock_app/screen/searchstock_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: main_page(),
  ));
}

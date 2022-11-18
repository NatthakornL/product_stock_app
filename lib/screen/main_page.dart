import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:product_stock_app/screen/login_page.dart';

void main() async {
  SystemChrome.setPreferredOrientations(
          [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight])
      .then((_) {
    runApp(main_page());
  });
}

class main_page extends StatefulWidget {
  const main_page({Key? key}) : super(key: key);

  @override
  State<main_page> createState() => _main_pageState();
}

class _main_pageState extends State<main_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD5F6FF),
      body: Container(
        margin: EdgeInsets.only(left: 30, right: 100, top: 50),
        child: Row(
          children: [
            SizedBox(
              height: 300.0,
              width: 30.0,
            ),
            CircleAvatar(
              radius: 100,
              backgroundColor: Colors.white30,
              child: ClipOval(
                  // child: FadeInImage.assetNetwork(
                  //   placeholder: 'assets/images/person-icon.png',
                  //   //image: snapshot.data.docs[index]['imagef'],
                  //   width: 100,
                  //   height: 100,
                  //   fit: BoxFit.cover,
                  // ),
                  ),
            ),
            SizedBox(
              width: 60.0,
            ),
            Text(
              'ไพจิต มีศรี',
              style: TextStyle(
                fontSize: 70.0,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              width: 2000.0,
            ),
            ElevatedButton(
                child: Text(
                  "ออกจากระบบ",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 70,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xffD5F6FF)),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const login_page(),
                    ),
                  );
                }),
            SizedBox(
              height: 100.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'คลังวัตถุดิบ',
                  style: TextStyle(
                      fontSize: 150,
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.w500),
                ),
              ],

            ),
          ],
        ),
      ),
    );
  }
}

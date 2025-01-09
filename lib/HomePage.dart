
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:te/Homepage/chart.dart';
import 'package:te/Homepage/infoUser.dart';
import 'package:te/Homepage/newNotification.dart';
import 'package:te/Homepage/newsPromotions.dart';
import 'package:te/Homepage/serviceOnline.dart';

import 'Homepage/partnerBank.dart';
class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}
class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Image.asset(
                'assets/images/shutterstock_2445162913 2.png',
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              // Căn các phần tử về bên phải
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.only(top: 40, right: 25),
                    child: SvgPicture.asset('assets/images/Vector1.svg'),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.only(top: 40, right: 25),
                    child:
                        SvgPicture.asset('assets/images/26. Notification.svg'),
                  ),
                )
              ],
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  // Stack chính cho phần thông tin người dùng
                  infoUser(),
                  SizedBox(height: 8),
                  serviceOnline(),
                  SizedBox(height: 8),
                  chart(),
                  newNotification(),
                  SizedBox(height: 8),
                  newsPromotions(),
                  SizedBox(height: 24),
                  partnerBank(),
                  SizedBox(height: 50),
                ],
              ),
            ),
            // Sử dụng IndexedStack để hiển thị màn hình tương ứng
          ],
        ),
      ),
    );
  }
}

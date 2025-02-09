import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:te/HelpCustom/HelpCustom.dart';
import 'package:te/Homepage/HomePage.dart';
import 'package:te/News/News.dart';
import 'package:te/Sevices/Service.dart';
import 'package:te/SettingPage/Setting.dart';


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 2; // Tab mặc định (ở giữa)

  // Thêm các màn hình vào danh sách _screens
  final List<Widget> _screens = [
    Service(),
    News(),
    HomePage(),
    HelpCustom(),
    Setting()
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            // Màn hình tương ứng với tab được chọn
            _screens[_currentIndex],
            // Thêm thanh navigation bar ở dưới, với hiệu ứng đè lên các màn hình
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 100,
                padding: EdgeInsets.only(bottom: 10, right: 10, left: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(24), // Bo tròn góc
                  child: Container(
                    child: CurvedNavigationBar(
                      backgroundColor: Colors.transparent,
                      buttonBackgroundColor:  Color(0xFF00AEEF),
                      height: 70,
                      index: _currentIndex,
                      items: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SvgPicture.asset(
                              "assets/images/Group1.svg",
                              width: 32,
                              height: 32,
                              color: _currentIndex == 0
                                  ? Colors.white
                                  : Color(0xFF0062B6),
                            ),
                            SizedBox(height: 3),
                            if (_currentIndex !=
                                0) // Hiển thị chữ nếu không phải tab được chọn
                              Text(
                                "Dịch vụ",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF0062B6),
                                ),
                              ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SvgPicture.asset(
                              "assets/images/Group.svg",
                              width: 32,
                              height: 32,
                              color: _currentIndex == 1
                                  ? Colors.white
                                  : Color(0xFF0062B6),
                            ),
                            SizedBox(height: 3),
                            if (_currentIndex != 1)
                              Text(
                                "Tin tức",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF0062B6),
                                ),
                              ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SvgPicture.asset(
                              "assets/images/Group 1983.svg",
                              width: 32,
                              height: 32,
                              color: _currentIndex == 2
                                  ? Colors.white
                                  : Color(0xFF0062B6),
                            ),
                            SizedBox(height: 3),
                            if (_currentIndex != 2)
                              Text(
                                "Trang chủ",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF0062B6),
                                ),
                              ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SvgPicture.asset(
                              "assets/images/Vector5.svg",
                              width: 32,
                              height: 32,
                              color: _currentIndex == 3
                                  ? Colors.white
                                  : Color(0xFF0062B6),
                            ),
                            SizedBox(height: 3),
                            if (_currentIndex != 3)
                              Text(
                                "Trợ giúp",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF0062B6),
                                ),
                              ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SvgPicture.asset(
                              "assets/images/Group 2277.svg",
                              width: 32,
                              height: 32,
                              color: _currentIndex == 4
                                  ? Colors.white
                                  : Color(0xFF0062B6),
                            ),
                            SizedBox(height: 3),
                            if (_currentIndex != 4)
                              Text(
                                "Cài đặt",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF0062B6),
                                ),
                              ),
                          ],
                        ),
                      ],
                      onTap: (index) {
                        setState(() {
                          _currentIndex =
                              index; // Cập nhật trạng thái khi chọn tab
                        });
                      },
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

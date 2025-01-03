import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:te/Clause.dart';
import 'package:te/SignIn.dart';
import 'package:te/SignUp.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                  Padding(
                    padding: const EdgeInsets.only(top: 170, left: 28),
                    child: Stack(
                      children: [
                        SvgPicture.asset('assets/images/Group 2220.svg'),
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 25),
                                child: Text(
                                  'Xin chào, DO BICH NGOC',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 25),
                                child: Row(
                                  children: [
                                    Text(
                                      'Mã Danh Bộ: ',
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.white),
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      '12112040608 ',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SvgPicture.asset(
                                        'assets/images/Ionicons.svg'),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 25),
                                child: Row(
                                  children: [
                                    Text(
                                      'Địa chỉ: ',
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.white),
                                    ),
                                    Text(
                                      '54/3B, HH TAN PHAT, P. PHU MY, QUAN 7 ',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 25),
                                child: Row(
                                  children: [
                                    Text(
                                      'Định mức nước: ',
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.white),
                                    ),
                                    Text(
                                      '143m3',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 12,
                                      child: VerticalDivider(
                                        color: Colors.white,
                                        thickness: 1,
                                      ),
                                    ),
                                    Text(
                                      'Giá biểu: ',
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.white),
                                    ),
                                    Text(
                                      '12',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 40),
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                        'assets/images/Vector3.svg'),
                                    SizedBox(width: 2),
                                    TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        'Lịch sử thanh toán',
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.white),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 12,
                                      child: VerticalDivider(
                                        color: Colors.white,
                                        thickness: 1,
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        'Liên kết Mã DB',
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.white),
                                      ),
                                    ),
                                    SizedBox(width: 2),
                                    SvgPicture.asset(
                                        'assets/images/Subtract.svg'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8),
                  Container(
                    width: 428,
                    height: 226,
                    padding: EdgeInsets.only(left: 0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: SvgPicture.asset(
                              'assets/images/nút mũi tên trái.svg'),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: SvgPicture.asset(
                              'assets/images/nút mũi tên phải.svg'),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 18, top: 8),
                            child: Row(
                              children: [
                                Text(
                                  'Dịch vụ trực tuyến',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF0062B6),
                                  ),
                                ),
                                SizedBox(width: 5),
                                SvgPicture.asset('assets/images/Vector4.svg'),
                              ],
                            ),
                          ),
                        ),
                        Stack(
                          children: [
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal, // Cuộn ngang
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 40, top: 40, right: 30),
                                    child: Row(
                                      children: [
                                        GestureDetector(
                                          onTap: () {},
                                          child: Column(
                                            children: [
                                              SvgPicture.asset(
                                                  'assets/images/GroupTieuThu.svg'),
                                              SizedBox(height: 8),
                                              Text(
                                                "Tiêu Thụ",
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    color: Colors.black),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(width: 70),
                                        GestureDetector(
                                          onTap: () {},
                                          child: Column(
                                            children: [
                                              SvgPicture.asset(
                                                  'assets/images/Bill.svg'),
                                              SizedBox(height: 8),
                                              Text(
                                                "Hóa đơn \ntiền nước",
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    color: Colors.black),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(width: 70),
                                        GestureDetector(
                                          onTap: () {},
                                          child: Column(
                                            children: [
                                              SvgPicture.asset(
                                                  'assets/images/Group 2213.svg'),
                                              SizedBox(height: 8),
                                              Text(
                                                "Lịch đọc số",
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    color: Colors.black),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(width: 70),
                                        GestureDetector(
                                          onTap: () {},
                                          child: Column(
                                            children: [
                                              SvgPicture.asset(
                                                  'assets/images/lichSuThanhToan.svg'),
                                              SizedBox(height: 8),
                                              Text(
                                                "   Lịch sử \nthanh toán",
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    color: Colors.black),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(width: 70),
                                        GestureDetector(
                                          onTap: () {},
                                          child: Column(
                                            children: [
                                              SvgPicture.asset(
                                                  'assets/images/Group 2358.svg'),
                                              SizedBox(height: 8),
                                              Text(
                                                "  Thông tin \nkhách hàng",
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    color: Colors.black),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 40, top: 20, right: 30),
                                    child: Row(
                                      children: [
                                        GestureDetector(
                                          onTap: () {},
                                          child: Column(
                                            children: [
                                              SvgPicture.asset(
                                                  'assets/images/Group.svg'),
                                              SizedBox(height: 8),
                                              Text(
                                                "Thông tin\ngiá nước",
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    color: Colors.black),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(width: 70),
                                        GestureDetector(
                                          onTap: () {},
                                          child: Column(
                                            children: [
                                              SvgPicture.asset(
                                                  'assets/images/Bill.svg'),
                                              SizedBox(height: 8),
                                              Text(
                                                "Thanh toán\n    Online",
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    color: Colors.black),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(width: 70),
                                        GestureDetector(
                                          onTap: () {},
                                          child: Column(
                                            children: [
                                              SvgPicture.asset(
                                                  'assets/images/Group 2213.svg'),
                                              SizedBox(height: 8),
                                              Text(
                                                " Đăng ký\nđịnh mức",
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    color: Colors.black),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(width: 70),
                                        GestureDetector(
                                          onTap: () {},
                                          child: Column(
                                            children: [
                                              SvgPicture.asset(
                                                  'assets/images/lichSuThanhToan.svg'),
                                              SizedBox(height: 8),
                                              Text(
                                                "   Lịch sử \nthanh toán",
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    color: Colors.black),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(width: 70),
                                        GestureDetector(
                                          onTap: () {},
                                          child: Column(
                                            children: [
                                              SvgPicture.asset(
                                                  'assets/images/Group 2358.svg'),
                                              SizedBox(height: 8),
                                              Text(
                                                "  Thông tin \nkhách hàng",
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    color: Colors.black),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 24, top: 190),
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                      'assets/images/Group 2072.svg'),
                                  SizedBox(width: 240),
                                  Align(
                                      child: TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Xem tất cả ->',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Color(0xFF0062B6),
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8),
                  Container(
                    width: 428,
                    height: 286,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 12, left: 10),
                              child: Text(
                                'Biểu đồ sử dụng nước',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF0062B6)),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 24),
                              child: Text('Lượng tiêu thụ 6 kỳ gần nhất (m3)',
                                  style: TextStyle(
                                    fontSize: 11,
                                  )),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 428,
                    height: 286,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 12, left: 18),
                              child: Text(
                                'Thông báo mới nhất',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF0062B6)),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
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

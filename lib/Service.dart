import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Service extends StatefulWidget {
  @override
  ServiceState createState() => ServiceState();
}

class ServiceState extends State<Service> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
          title: Row(
        children: [
          GestureDetector(
            onTap: () {
              // Navigator.pop(context);
            },
            child: Align(
              alignment: Alignment.topLeft,
              // Can adjust to desired position
              child: Padding(
                padding: const EdgeInsets.only(top: 8, left: 8),
                child: SvgPicture.asset(
                  'assets/images/Group 1833.svg',
                  width: 43,
                  height: 43,
                ),
              ),
            ),
          ),
          const Align(
            alignment: Alignment.topLeft,
            // Can adjust to desired position
            child: Padding(
                padding: EdgeInsets.only(top: 8, left: 18),
                child: Text(
                  'Dịch vụ',
                  style: TextStyle(
                      fontSize: 20,
                      color: Color(0xff0062B6),
                      fontWeight: FontWeight.bold),
                )),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.only(top: 8, left: 180),
              child: SvgPicture.asset('assets/images/Vector1.svg'),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.only(top: 8, left: 20),
              child: SvgPicture.asset('assets/images/26. Notification.svg'),
            ),
          )
        ],
      )),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Image.asset(
              'assets/images/Group 22721.png',
            ),
          ),
          SingleChildScrollView(
            child: Align(
              alignment: Alignment.topLeft,
              child: Container(
                height: 990,
                padding: const EdgeInsets.only(top: 40, left: 28),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 25),
                      child: Text(
                        'Xin chào, DO BICH NGOC',
                        style: TextStyle(
                          fontSize: 20,
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
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          ),
                          SizedBox(width: 10),
                          Text(
                            '12112040608 ',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SvgPicture.asset('assets/images/Ionicons.svg'),
                          SizedBox(width: 20),
                          TextButton(onPressed: (){},
                              child: Text(
                                'Thêm mã ',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                          ),
                          SvgPicture.asset('assets/images/Subtract.svg'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 25),
                      child: Row(
                        children: [
                          Text(
                            'Địa chỉ: ',
                            style: TextStyle(fontSize: 12, color: Colors.white),
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
                            'Khách hàng: ',
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          ),
                          Text(
                            'Đỗ Thị Bích Ngọc',
                            style: TextStyle(
                              fontSize: 16,
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
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          ),
                          Text(
                            '143m3',
                            style: TextStyle(
                              fontSize: 16,
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
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          ),
                          Text(
                            '12',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    Stack(
                      children: [
                        // Container với màu nền cho toàn bộ Stack
                        Padding(padding: EdgeInsets.only(right: 30),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)
                            ),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 30,left: 30),
                                    child: Text('Hóa đơn - tiêu thụ',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 20, top: 20),
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
                                            ),
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
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: 60),
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
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 20, top: 20),
                                  child: Row(
                                    children: [
                                      GestureDetector(
                                        onTap: () {},
                                        child: Column(
                                          children: [
                                            SvgPicture.asset(
                                                'assets/images/Group 2212.svg'),
                                            SizedBox(height: 8),
                                            Text(
                                              "Thông tin\ngiá nước",
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: 60),
                                      GestureDetector(
                                        onTap: () {},
                                        child: Column(
                                          children: [
                                            SvgPicture.asset(
                                                'assets/images/Group 2157.svg'),
                                            SizedBox(height: 8),
                                            Text(
                                              "Thanh toán\n    Online",
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: 60),
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
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 20, top: 20,bottom: 30),
                                  child: Row(
                                    children: [
                                      GestureDetector(
                                        onTap: () {},
                                        child: Column(
                                          children: [
                                            SvgPicture.asset(
                                                'assets/images/Group 2212.svg'),
                                            SizedBox(height: 8),
                                            Text(
                                              "Thông tin\ngiá nước",
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: 60),
                                      GestureDetector(
                                        onTap: () {},
                                        child: Column(
                                          children: [
                                            SvgPicture.asset(
                                                'assets/images/Group 2157.svg'),
                                            SizedBox(height: 8),
                                            Text(
                                              "Thanh toán\n    Online",
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: 60),
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
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ), // Chỉnh màu nền Stack
                          ),),

                      ],
                    ),
                    SizedBox(height: 30),
                    Stack(
                      children: [
                        // Container với màu nền cho toàn bộ Stack
                        Padding(padding: EdgeInsets.only(right: 30),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)
                            ),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 30,left: 30),
                                    child: Text('Dịch vụ trực tuyến',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 25, top: 20),
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
                                              "Đăng ký mới",
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: 40),
                                      GestureDetector(
                                        onTap: () {},
                                        child: Column(
                                          children: [
                                            SvgPicture.asset(
                                                'assets/images/Bill.svg'),
                                            SizedBox(height: 8),
                                            Text(
                                              "Đổi mục đích\nsử dụng",
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: 50),
                                      GestureDetector(
                                        onTap: () {},
                                        child: Column(
                                          children: [
                                            SvgPicture.asset(
                                                'assets/images/Group 2213.svg'),
                                            SizedBox(height: 8),
                                            Text(
                                              "Tiến độ\ndịch vụ",
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 30, top: 20),
                                  child: Row(
                                    children: [
                                      GestureDetector(
                                        onTap: () {},
                                        child: Column(
                                          children: [
                                            SvgPicture.asset(
                                                'assets/images/Group 2212.svg'),
                                            SizedBox(height: 8),
                                            Text(
                                              "Báo sự cố",
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: 60),
                                      GestureDetector(
                                        onTap: () {},
                                        child: Column(
                                          children: [
                                            SvgPicture.asset(
                                                'assets/images/Group 2157.svg'),
                                            SizedBox(height: 8),
                                            Text(
                                              " Đăng ký\nđịnh mức ",
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: 60),
                                      GestureDetector(
                                        onTap: () {},
                                        child: Column(
                                          children: [
                                            SvgPicture.asset(
                                                'assets/images/Group 2213.svg'),
                                            SizedBox(height: 8),
                                            Text(
                                              "  Tái lập\n danh bạ",
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 35, top: 20,bottom: 30),
                                  child: Row(
                                    children: [
                                      GestureDetector(
                                        onTap: () {},
                                        child: Column(
                                          children: [
                                            SvgPicture.asset(
                                                'assets/images/Group 2212.svg'),
                                            SizedBox(height: 8),
                                            Text(
                                              "Thông tin\ngiá nước",
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ), // Chỉnh màu nền Stack
                          ),),

                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

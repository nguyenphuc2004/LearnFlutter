import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:te/appbar/AppBarCommon.dart';

class HelpCustom extends StatefulWidget {
  HelpCustomState createState() => HelpCustomState();
}

class HelpCustomState extends State<HelpCustom> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0, // Tắt hiệu ứng đổi màu khi cuộn
        automaticallyImplyLeading: false,
        title: AppBarCustom(title: 'Trợ giúp'),
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Image.asset(
              'assets/images/Group 22721.png',
            ),
          ),
          Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 20, left: 28),
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
                          TextButton(
                            onPressed: () {},
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
                  ],
                ),
              ),
              SizedBox(height: 16),
              Container(
                  width: MediaQuery.of(context).size.width * 0.95,
                  height: MediaQuery.of(context).size.width * 1.2,
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // GridView sẽ không chiếm hết không gian nữa
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: GridView(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                            ),
                            children: [
                              GestureDetector(
                                onTap: () {
                                  // Xử lý khi item "Góp ý ứng dụng" được click
                                  print('Góp ý ứng dụng clicked');
                                },
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 51.72,
                                      height: 51.72,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(8),
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Colors.black.withOpacity(0.2),
                                            blurRadius: 5,
                                            spreadRadius: 2,
                                          ),
                                        ],
                                      ),
                                      child: SvgPicture.asset(
                                          'assets/images/Group 2275.svg'),
                                    ),
                                    Text('   Góp ý\nứng dụng'),
                                  ],
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  // Xử lý khi item "Tổng đài CSKH" được click
                                  print('Tổng đài CSKH clicked');
                                },
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 51.72,
                                      height: 51.72,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(8),
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Colors.black.withOpacity(0.2),
                                            blurRadius: 5,
                                            spreadRadius: 2,
                                          ),
                                        ],
                                      ),
                                      child: SvgPicture.asset(
                                          'assets/images/Group 2367.svg'),
                                    ),
                                    Text('Tổng đài\n  CSKH',
                                        style: TextStyle(fontSize: 14)),
                                  ],
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  // Xử lý khi item "Chat với Sawaco" được click
                                  print('Chat với Sawaco clicked');
                                },
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 51.72,
                                      height: 51.72,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(8),
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Colors.black.withOpacity(0.2),
                                            blurRadius: 5,
                                            spreadRadius: 2,
                                          ),
                                        ],
                                      ),
                                      child: SvgPicture.asset(
                                        'assets/images/Group 1750.svg',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    Text('Chat với\nSawaco',
                                        style: TextStyle(fontSize: 14)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),

                        // Cách lưới 8px
                        Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 16),
                              child: Text(
                                'Hướng dẫn sử dụng App',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xff0062B6),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )),
                        Container(
                          margin: EdgeInsets.only(top: 8),
                          child: GridView(
                            shrinkWrap: true,
                            // Điều này giúp GridView chỉ chiếm không gian cần thiết
                            physics: NeverScrollableScrollPhysics(),
                            // Tắt cuộn nếu cần
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 15.0,
                              // Khoảng cách ngang giữa các item
                              mainAxisSpacing:
                                  15.0, // Khoảng cách dọc giữa các item
                            ),
                            children: [
                              Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.2),
                                          // Màu của bóng
                                          blurRadius: 5,
                                          // Độ mờ của bóng
                                          spreadRadius:
                                              2, // Mức độ lan rộng của bóng
                                        ),
                                      ],
                                    ),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(top: 5),
                                          child: Image.asset(
                                              'assets/images/bn1.png'),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 8),
                                          child: Text(
                                              'Video hướng dẫn sử dụng App CSKH Sawaco'),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.2),
                                          // Màu của bóng
                                          blurRadius: 5,
                                          // Độ mờ của bóng
                                          spreadRadius:
                                              2, // Mức độ lan rộng của bóng
                                        ),
                                      ],
                                    ),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(top: 5),
                                          child: Image.asset(
                                              'assets/images/bn1.png'),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 8),
                                          child: Text(
                                              'Video hướng dẫn sử dụng App CSKH Sawaco'),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.2),
                                          // Màu của bóng
                                          blurRadius: 5,
                                          // Độ mờ của bóng
                                          spreadRadius:
                                              2, // Mức độ lan rộng của bóng
                                        ),
                                      ],
                                    ),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(top: 5),
                                          child: Image.asset(
                                              'assets/images/bn1.png'),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 8),
                                          child: Text(
                                              'Video hướng dẫn sử dụng App CSKH Sawaco'),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.2),
                                          // Màu của bóng
                                          blurRadius: 5,
                                          // Độ mờ của bóng
                                          spreadRadius:
                                              2, // Mức độ lan rộng của bóng
                                        ),
                                      ],
                                    ),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(top: 5),
                                          child: Image.asset(
                                              'assets/images/bn1.png'),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 8),
                                          child: Text(
                                              'Video hướng dẫn sử dụng App CSKH Sawaco'),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ))
            ],
          ),
          SizedBox(
            height: 50,
          )
        ],
      ),
    ));
  }
}

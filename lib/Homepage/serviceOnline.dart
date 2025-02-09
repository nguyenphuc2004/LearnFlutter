import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:te/Consume/Consume.dart';
import 'package:te/Invoice/PaymentInvoice.dart';
import 'package:te/NewAttachRegistration.dart';
import 'package:te/Proceduce.dart';
import 'package:te/Sevices/ReportProblem.dart';
import 'package:te/Sevices/ServiceProgress.dart';
import 'package:te/WaterConsumptionRegistration.dart';
import 'package:te/WaterPriceList.dart';

class serviceOnline extends StatefulWidget {
  const serviceOnline({super.key});

  @override
  State<serviceOnline> createState() => _serviceOnlineState();
}

class _serviceOnlineState extends State<serviceOnline> {
  // Điều khiển PageView, giúp thay đổi trang bằng cách cuộn hoặc gọi `animateToPage()`
  final PageController _pageController = PageController();

// Lưu trang hiện tại của PageView, ban đầu là trang đầu tiên (0)
  int _currentPage = 0;

  void _nextPage() {
    // Kiểm tra nếu chưa đến trang cuối (trang 1) thì mới cho phép chuyển trang
    if (_currentPage < 1) {
      setState(() {
        _currentPage += 1; // Tăng biến đếm trang hiện tại lên 1
      });

      // Chuyển đổi trang trong PageView đến trang mới (_currentPage)
      _pageController.animateToPage(
        _currentPage, // Trang mới sẽ hiển thị
        duration: Duration(milliseconds: 300), // Hiệu ứng chuyển trang kéo dài 300ms
        curve: Curves.easeInOut, // Hiệu ứng chuyển động mượt
      );
    }
  }

  void _previousPage() {
    // Kiểm tra nếu chưa phải trang đầu tiên (trang 0) thì mới cho phép quay lại
    if (_currentPage > 0) {
      setState(() {
        _currentPage -= 1; // Giảm biến đếm trang hiện tại đi 1
      });

      // Quay về trang trước trong PageView
      _pageController.animateToPage(
        _currentPage, // Trang mới sẽ hiển thị
        duration: Duration(milliseconds: 300), // Hiệu ứng chuyển trang kéo dài 300ms
        curve: Curves.easeInOut, // Hiệu ứng chuyển động mượt
      );
    }
  }


  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.27,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Stack(children: [
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
              PageView(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                children: [
                  // Trang 1
                  Column(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 40, top: 40, right: 30),
                        child: Row(
                          children: [
                            _buildFeatureItem(
                              iconPath: 'assets/images/GroupTieuThu.svg',
                              title: 'Tiêu Thụ',
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ConSume()),
                                );
                              },
                            ),
                            SizedBox(width: 70),
                            _buildFeatureItem(
                              iconPath: 'assets/images/Bill.svg',
                              title: 'Hóa đơn \ntiền nước',
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PaymentInvoice()),
                                );
                              },
                            ),
                            SizedBox(width: 70),
                            _buildFeatureItem(
                              iconPath: 'assets/images/Group 2213.svg',
                              title: 'Lịch đọc số',
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ReportProblem()),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 30, top: 20, right: 30),
                        child: Row(
                          children: [
                            _buildFeatureItem(
                              iconPath: 'assets/images/lichSuThanhToan.svg',
                              title: '   Lịch sử \nthanh toán',
                              onTap: () {},
                            ),
                            SizedBox(width: 45),
                            _buildFeatureItem(
                              iconPath: 'assets/images/water.svg',
                              title: '    Thông báo\nchất lượng nước',
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Proceduce()),
                                );
                              },
                            ),
                            SizedBox(width: 50),
                            _buildFeatureItem(
                              iconPath: 'assets/images/Vector6.svg',
                              title: 'Đăng ký mới',
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          NewAttachRegistration()),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  // Trang 2
                  Column(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 50, top: 40, right: 30),
                        child: Row(
                          children: [
                            _buildFeatureItem(
                              iconPath: 'assets/images/Group 2103.svg',
                              title: 'Thông tin\ngiá nước',
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => WaterPriceList()),
                                );
                              },
                            ),
                            SizedBox(width: 60),
                            _buildFeatureItem(
                              iconPath: 'assets/images/Group 2381.svg',
                              title: 'Thanh toán\n    Online',
                              onTap: () {},
                            ),
                            SizedBox(width: 60),
                            _buildFeatureItem(
                              iconPath: 'assets/images/Group 2365.svg',
                              title: ' Đăng ký\nđịnh mức',
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          WaterConsumptionRegistration()),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 35, top: 20, right: 30),
                        child: Row(
                          children: [
                            _buildFeatureItem(
                              iconPath: 'assets/images/Vector6.svg',
                              title: 'Đổi mục đích\n    sử dụng',
                              onTap: () {},
                            ),
                            SizedBox(width: 60),
                            _buildFeatureItem(
                              iconPath: 'assets/images/Group 2143.svg',
                              title: 'Tiến độ\ndịch vụ',
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ServiceProgress()),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              // Nút mũi tên trái
              if (_currentPage != 0)
                GestureDetector(
                  onTap: () {
                    _previousPage();
                  },
                  child: Container(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: SvgPicture.asset(
                        'assets/images/nút mũi tên trái.svg',
                      ),
                    ),
                  ),
                ),
              if (_currentPage < 1)
                GestureDetector(
                  onTap: () {
                    _nextPage();
                  },
                  child: Container(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: SvgPicture.asset(
                        'assets/images/nút mũi tên phải.svg',
                      ),
                    ),
                  ),
                ),

              // Nút "Xem tất cả"
              Padding(
                padding: const EdgeInsets.only(left: 24, top: 200),
                child: Row(
                  children: [
                    SvgPicture.asset('assets/images/Group 2072.svg'),
                    Spacer(),
                    Align(
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Xem tất cả ->',
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xFF0062B6),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ]));
  }

  Widget _buildFeatureItem({
    required String iconPath,
    required String title,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          SvgPicture.asset(iconPath),
          SizedBox(height: 8),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 13, color: Colors.black),
          ),
        ],
      ),
    );
  }
}

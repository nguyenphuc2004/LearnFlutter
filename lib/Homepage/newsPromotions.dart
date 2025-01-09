import 'package:flutter/material.dart';

class newsPromotions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 16,top: 8),
              child: Text(
                'Tin tức khuyến mãi',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0062B6)),
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal, // Cuộn theo chiều ngang
            child: Row(
              children: [
                // Column đầu tiên
                Container(
                  margin: const EdgeInsets.only(right: 16,top:8), // Khoảng cách giữa các cột
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Image.asset('assets/images/bn1.png'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16, top: 8),
                        child: const Text('Tra cứu thông tin nước, giảm 25% qua VNPAY'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 24),
                        child: GestureDetector(
                          onTap: () {
                            // Xử lý sự kiện khi nhấn
                          },
                          child: const Text(
                            'Xem ngay ->',
                            style: TextStyle(
                              color: Color(0xFF0062B6),
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Column thứ hai
                Container(
                  margin: const EdgeInsets.only(right: 16,top: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Image.asset('assets/images/bn2.png'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16, top: 8),
                        child: const Text('Sale tới 25K khi thanh toán online'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 24),
                        child: GestureDetector(
                          onTap: () {
                            // Xử lý sự kiện khi nhấn
                          },
                          child: const Text(
                            'Xem ngay ->',
                            style: TextStyle(
                              color: Color(0xFF0062B6),
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

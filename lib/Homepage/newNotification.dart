import 'package:flutter/material.dart';
import 'package:te/Homepage/newsPromotions.dart';
import 'package:te/Homepage/partnerBank.dart';

class newNotification extends StatelessWidget {
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
              padding: EdgeInsets.only(top: 8, left: 16),
              child: Text(
                'Thông báo mới nhất',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0062B6)),
              ),
            ),
          ),
          SizedBox(height: 8),
          Container(
            // Đặt margin 16px cho tất cả các cạnh
            width: MediaQuery.of(context).size.width * 0.93,
            height: MediaQuery.of(context).size.height * 0.19,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    // Màu sắc bóng, thêm độ trong suốt
                    spreadRadius: 2,
                    // Phóng to hoặc thu nhỏ bóng
                    blurRadius: 5,
                    // Độ mờ của bóng
                    offset: Offset(3, 3), // Vị trí bóng (X, Y)
                  ),
                ],
                color: Colors.white),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    margin: EdgeInsets.only(top: 8, left: 16),
                    child: Row(
                      children: [
                        Icon(Icons.fiber_manual_record,
                            size: 10, color: Colors.black),
                        // Dấu chấm
                        SizedBox(width: 8),
                        // Khoảng cách giữa dấu chấm và văn bản
                        Wrap(
                          children: [
                            Text(
                              'Thông báo về việc chụp hình hoặc báo chỉ số cho\nnhân viên biên đọc',
                              style: TextStyle(
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    margin: EdgeInsets.only(top: 8, left: 16),
                    child: Row(
                      children: [
                        Icon(Icons.fiber_manual_record,
                            size: 10, color: Colors.black),
                        SizedBox(width: 8),
                        // Khoảng cách giữa dấu chấm và văn bản
                        Expanded(
                          child: Text(
                            'Thông báo ngưng cung cấp nước thay đồng hồ tổng vào lúc 22h ngày 08/11/2023 tới 05h ngày 09/11/2023',
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    margin: EdgeInsets.only(top: 8, left: 16),
                    child: Row(
                      children: [
                        Icon(Icons.fiber_manual_record,
                            size: 10, color: Colors.black),
                        // Dấu chấm
                        SizedBox(width: 8),
                        // Khoảng cách giữa dấu chấm và văn bản
                        Expanded(
                          child: Text(
                            'Thông báo ngưng cung cấp nước tại một số khu vực Phường 3 Quận 4',
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 24),
                      child: GestureDetector(
                        onTap: () {},
                        child: Text(
                          'Xem ngay ->',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF0062B6),
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                    )
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

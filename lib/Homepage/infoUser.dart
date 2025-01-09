import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class infoUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }

}
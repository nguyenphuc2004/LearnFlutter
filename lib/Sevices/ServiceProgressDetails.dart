import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../appbar/AppBarCommon.dart';

class ServiceProgressDetails extends StatefulWidget {
  const ServiceProgressDetails({super.key});

  @override
  State<ServiceProgressDetails> createState() => _ServiceProgressDetailsState();
}

class _ServiceProgressDetailsState extends State<ServiceProgressDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        automaticallyImplyLeading: false,
        title: AppBarCustom(
          title: "Tiến độ dịch vụ",
          hasBackButton: true,
        ),
      ),
      body: Column(
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.only(top: 30),
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Color(0xFFEDF6FC)),
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.width * 0.55,
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Mã yêu cầu',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Text(
                        '10098',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.grey[300],
                  ),
                  Row(
                    children: [
                      Text(
                        'Tên khách hàng',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Text(
                        'Đỗ Thị Bích Ngọc',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.grey[300],
                  ),
                  Row(
                    children: [
                      Text(
                        'Loại yêu cầu',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Text(
                        'Yêu cầu lắp đặt',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.grey[300],
                  ),
                  Row(
                    children: [
                      Text(
                        'Nội dung',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Text(
                        'Yêu cầu lắp đặt đồng hồ nước mới',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.grey[300],
                  ),
                  Row(
                    children: [
                      Text(
                        'Địa chỉ',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Text(
                        'Phú Mỹ, Quận 7',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            child: Row(
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 5,top: 10),
                      child: SvgPicture.asset('assets/images/Line 40.svg'),
                    ),
                    SvgPicture.asset('assets/images/Ellipse 15.svg'),
                    Container(
                      margin: EdgeInsets.only(top: 75),
                      child: SvgPicture.asset('assets/images/Ellipse 15.svg'),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 155),
                      child: SvgPicture.asset('assets/images/Ellipse 15.svg'),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15,left: 2.4),
                      child: SvgPicture.asset('assets/images/Vector23.svg'),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 89,left: 2.4),
                      child: SvgPicture.asset('assets/images/Vector23.svg'),
                    )
                  ],
                ),
                SizedBox(
                  width: 30,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Kết thúc yêu cầu',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '12/10/2023 - 16:30',
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Text(
                      'Xử lí thông tin yêu cầu khách hàng',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '11/10/2023 - 17:00',
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Đã tiếp nhận',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '10/10/2023 - 14:00',
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:te/appbar/AppBarCommon.dart';

class InvoiceDetails extends StatefulWidget {
  const InvoiceDetails({super.key});

  @override
  State<InvoiceDetails> createState() => _InvoiceDetailsState();
}

class _InvoiceDetailsState extends State<InvoiceDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: AppBarCustom(
          title: "Chi tiết hóa đơn tiền nước",
          hasBackButton: true,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                padding: EdgeInsets.all(0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Color(0xFF0062B6), // Màu viền xám
                    width: 1, // Độ dày viền
                  ),
                ),
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.width * 0.7,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 16, left: 16, right: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Hóa đơn',
                              style: TextStyle(
                                fontSize: 17,
                              )),
                          Spacer(),
                          Text('Kỳ 1 năm 2024',
                              style: TextStyle(
                                fontSize: 17,
                              )),
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.grey, // Màu sắc của đường
                      thickness: 1, // Độ dày của đường
                      indent: 0, // Khoảng cách từ lề trái
                      endIndent: 0,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16, right: 16),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Từ ngày',
                                  style: TextStyle(
                                    fontSize: 17,
                                  )),
                              Text("13/12/2023",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF0062B6)))
                            ],
                          ),
                          Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text('Từ ngày',
                                  style: TextStyle(
                                    fontSize: 17,
                                  )),
                              Text("13/12/2023",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF0062B6)))
                            ],
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.grey, // Màu sắc của đường
                      thickness: 1, // Độ dày của đường
                      indent: 0, // Khoảng cách từ lề trái
                      endIndent: 0,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16, right: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Chỉ số cũ',
                                  style: TextStyle(
                                    fontSize: 17,
                                  )),
                              Text("28",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF0062B6)))
                            ],
                          ),
                          Spacer(),
                          Column(
                            children: [
                              Text('Chỉ số mới',
                                  style: TextStyle(
                                    fontSize: 17,
                                  )),
                              Text("45",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF0062B6)))
                            ],
                          ),
                          Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text('Tiêu thụ',
                                  style: TextStyle(
                                    fontSize: 17,
                                  )),
                              Text("28",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF0062B6)))
                            ],
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.grey, // Màu sắc của đường
                      thickness: 1, // Độ dày của đường
                      indent: 0, // Khoảng cách từ lề trái
                      endIndent: 0,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: 8, bottom: 8, left: 16, right: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Giá biểu ',
                              style: TextStyle(
                                fontSize: 17,
                              )),
                          Text("11",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF0062B6))),
                          Spacer(),
                          Text('Định mức ',
                              style: TextStyle(
                                fontSize: 17,
                              )),
                          Text("12",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF0062B6))),
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.grey, // Màu sắc của đường
                      thickness: 1, // Độ dày của đường
                      indent: 0, // Khoảng cách từ lề trái
                      endIndent: 0,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: 8, bottom: 8, left: 16, right: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Tổng tiền ',
                              style: TextStyle(
                                fontSize: 17,
                              )),
                          Text("1.377.012 VNĐ",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFFF4348))),
                          Spacer(),
                          Container(
                            height: 30,
                            decoration: BoxDecoration(
                              color: Color(0xFF29CCFD),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              // Căn giữa nội dung trong container
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 16,
                                      vertical:
                                          0), // Đảm bảo padding không ảnh hưởng
                                ),
                                child: Text(
                                  'Đã thanh toán',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
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
            ),
            Padding(
              padding: EdgeInsets.only(left: 24, top: 16),
              child: Text('Chi tiết tiền nước',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                padding: EdgeInsets.all(0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Color(0xFF0062B6), // Màu viền xám
                    width: 1, // Độ dày viền
                  ),
                ),
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.width * 0.5,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 16, left: 16, right: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('Tiêu thụ (m3)',
                              style: TextStyle(
                                fontSize: 15,
                              )),
                          SizedBox(width: 8),
                          Text('Đơn giá (đ)',
                              style: TextStyle(
                                fontSize: 15,
                              )),
                          SizedBox(width: 8),
                          Text('Thành tiền (đ)',
                              style: TextStyle(
                                fontSize: 15,
                              )),
                        ],
                      ),
                    ),
                    Divider(
                      color: Color(0xFF0062B6), // Màu sắc của đường
                      thickness: 1, // Độ dày của đường
                      indent: 0, // Khoảng cách từ lề trái
                      endIndent: 0,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8, right: 8),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Tiền',
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                                Text(
                                  'Nước',
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 8),
                          SizedBox(
                            height: 50, // Chiều cao cụ thể
                            child: VerticalDivider(
                              color: Color(0xFF0062B6), // Màu sắc của đường
                              thickness: 1, // Độ dày của đường
                            ),
                          ),
                          SizedBox(width: 8),
                          // Khoảng cách giữa đường thẳng và cột thứ hai
                          Expanded(
                            flex: 7,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      '4 ',
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF0062B6),
                                      ),
                                    ),
                                    Text(
                                      '6.700',
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF0062B6),
                                      ),
                                    ),
                                    Text(
                                      '26.800',
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF0062B6),
                                      ),
                                    ),
                                  ],
                                ),
                                Divider(
                                  color: Colors.grey, // Màu sắc của đường
                                  thickness: 1, // Độ dày của đường
                                  indent: 0, // Khoảng cách từ lề trái
                                  endIndent: 0,
                                ),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      '4 ',
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF0062B6),
                                      ),
                                    ),
                                    Text(
                                      '6.700',
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF0062B6),
                                      ),
                                    ),
                                    Text(
                                      '26.800',
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF0062B6),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Divider(
                      color: Color(0xFF0062B6), // Màu sắc của đường
                      thickness: 1, // Độ dày của đường
                      indent: 0, // Khoảng cách từ lề trái
                      endIndent: 0,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8, right: 8),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Tiền',
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                                Text(
                                  'DVTN',
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 8),
                          SizedBox(
                            height: 50, // Chiều cao cụ thể
                            child: VerticalDivider(
                              color: Color(0xFF0062B6), // Màu sắc của đường
                              thickness: 1, // Độ dày của đường
                            ),
                          ),
                          SizedBox(width: 8),
                          // Khoảng cách giữa đường thẳng và cột thứ hai
                          Expanded(
                            flex: 7,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      '4 ',
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF0062B6),
                                      ),
                                    ),
                                    Text(
                                      '1.340',
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF0062B6),
                                      ),
                                    ),
                                    Text(
                                      '5.360',
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF0062B6),
                                      ),
                                    ),
                                  ],
                                ),
                                Divider(
                                  color: Colors.grey, // Màu sắc của đường
                                  thickness: 1, // Độ dày của đường
                                  indent: 0, // Khoảng cách từ lề trái
                                  endIndent: 0,
                                ),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      '4 ',
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF0062B6),
                                      ),
                                    ),
                                    Text(
                                      '1.675',
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF0062B6),
                                      ),
                                    ),
                                    Text(
                                      '5.025',
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF0062B6),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 24),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                padding: EdgeInsets.all(0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Color(0xFF0062B6), // Màu viền xám
                    width: 1, // Độ dày viền
                  ),
                ),
                width: MediaQuery.of(context).size.width * 0.9,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 16, left: 16, right: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Tiền nước',
                              style: TextStyle(
                                fontSize: 17,
                              )),
                          Spacer(),
                          Text('2.029.140 VNĐ',
                              style: TextStyle(
                                fontSize: 17,
                              )),
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.grey, // Màu sắc của đường
                      thickness: 1, // Độ dày của đường
                      indent: 5, // Khoảng cách từ lề trái
                      endIndent: 5,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16, left: 16, right: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Tiền nước ĐC',
                              style: TextStyle(
                                fontSize: 17,
                              )),
                          Spacer(),
                          Text('-985.350 VNĐ',
                              style: TextStyle(
                                fontSize: 17,
                              )),
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.grey, // Màu sắc của đường
                      thickness: 1, // Độ dày của đường
                      indent: 5, // Khoảng cách từ lề trái
                      endIndent: 5,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16, left: 16, right: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Thuế GTGT',
                              style: TextStyle(
                                fontSize: 17,
                              )),
                          Spacer(),
                          Text('101.457 VNĐ',
                              style: TextStyle(
                                fontSize: 17,
                              )),
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.grey, // Màu sắc của đường
                      thickness: 1, // Độ dày của đường
                      indent: 5, // Khoảng cách từ lề trái
                      endIndent: 5,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16, left: 16, right: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Thuế GTGT ĐC',
                              style: TextStyle(
                                fontSize: 17,
                              )),
                          Spacer(),
                          Text('-49.568 VNĐ',
                              style: TextStyle(
                                fontSize: 17,
                              )),
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.grey, // Màu sắc của đường
                      thickness: 1, // Độ dày của đường
                      indent: 5, // Khoảng cách từ lề trái
                      endIndent: 5,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16, left: 16, right: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Tiền DVTN',
                              style: TextStyle(
                                fontSize: 17,
                              )),
                          Spacer(),
                          Text('507.306 VNĐ',
                              style: TextStyle(
                                fontSize: 17,
                              )),
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.grey, // Màu sắc của đường
                      thickness: 1, // Độ dày của đường
                      indent: 5, // Khoảng cách từ lề trái
                      endIndent: 5,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16, left: 16, right: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Tiền DVTN ĐC',
                              style: TextStyle(
                                fontSize: 17,
                              )),
                          Spacer(),
                          Text('-246.508 VNĐ',
                              style: TextStyle(
                                fontSize: 17,
                              )),
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.grey, // Màu sắc của đường
                      thickness: 1, // Độ dày của đường
                      indent: 5, // Khoảng cách từ lề trái
                      endIndent: 5,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16, left: 16, right: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Thuế GTGT  DVTN',
                              style: TextStyle(
                                fontSize: 17,
                              )),
                          Spacer(),
                          Text('40.584 VNĐ',
                              style: TextStyle(
                                fontSize: 17,
                              )),
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.grey, // Màu sắc của đường
                      thickness: 1, // Độ dày của đường
                      indent: 5, // Khoảng cách từ lề trái
                      endIndent: 5,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16, left: 16, right: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Thuế GTGT  DVTN ĐC',
                              style: TextStyle(
                                fontSize: 17,
                              )),
                          Spacer(),
                          Text('-19.720 VNĐ',
                              style: TextStyle(
                                fontSize: 17,
                              )),
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.grey, // Màu sắc của đường
                      thickness: 1, // Độ dày của đường
                      indent: 5, // Khoảng cách từ lề trái
                      endIndent: 5,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: 16, bottom: 16, left: 16, right: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Tổng cộng cộng(VNĐ)',
                              style: TextStyle(
                                  fontSize: 17, color: Color(0xFF0062B6))),
                          Spacer(),
                          Text('1.377.012 VNĐ',
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Color(0xFFFF4348),
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 24),
            Align(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Hoá đơn điện tử 1'),
                    Container(
                      height: 30,
                      decoration: BoxDecoration(
                        color: Color(0xFF0062B6),
                        borderRadius: BorderRadius.circular(13),
                      ),
                      child: Center(
                        // Căn giữa nội dung trong container
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 0), // Đảm bảo padding không ảnh hưởng
                          ),
                          child: Text(
                            'Xem chi tiết',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        border: Border.all(
                          color: Color(0xFF0062B6), // Màu viền xám
                          width: 1, // Độ dày viền
                        ),
                      ),
                      child: Center(
                        // Căn giữa nội dung trong container
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 0), // Đảm bảo padding không ảnh hưởng
                          ),
                          child: Text(
                            'Tải xuống',
                            style: TextStyle(
                                color: Color(0xFF0062B6), fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 8),
            Align(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Hoá đơn điện tử 2'),
                    Container(
                      height: 30,
                      decoration: BoxDecoration(
                        color: Color(0xFF0062B6),
                        borderRadius: BorderRadius.circular(13),
                      ),
                      child: Center(
                        // Căn giữa nội dung trong container
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 0), // Đảm bảo padding không ảnh hưởng
                          ),
                          child: Text(
                            'Xem chi tiết',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        border: Border.all(
                          color: Color(0xFF0062B6), // Màu viền xám
                          width: 1, // Độ dày viền
                        ),
                      ),
                      child: Center(
                        // Căn giữa nội dung trong container
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 0), // Đảm bảo padding không ảnh hưởng
                          ),
                          child: Text(
                            'Tải xuống',
                            style: TextStyle(
                                color: Color(0xFF0062B6), fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 8),
            Align(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Hoá đơn điện tử 3'),
                    Container(
                      height: 30,
                      decoration: BoxDecoration(
                        color: Color(0xFF0062B6),
                        borderRadius: BorderRadius.circular(13),
                      ),
                      child: Center(
                        // Căn giữa nội dung trong container
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 0), // Đảm bảo padding không ảnh hưởng
                          ),
                          child: Text(
                            'Xem chi tiết',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        border: Border.all(
                          color: Color(0xFF0062B6), // Màu viền xám
                          width: 1, // Độ dày viền
                        ),
                      ),
                      child: Center(
                        // Căn giữa nội dung trong container
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 0), // Đảm bảo padding không ảnh hưởng
                          ),
                          child: Text(
                            'Tải xuống',
                            style: TextStyle(
                                color: Color(0xFF0062B6), fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    ));
  }
}

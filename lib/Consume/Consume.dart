import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:te/Consume/ConsumeChart.dart';
import 'package:te/appbar/AppBarCommon.dart';
import 'package:te/appbar/AppBarTuLam.dart';

class ConSume extends StatefulWidget {
  const ConSume({super.key});

  @override
  State<ConSume> createState() => _ConSumeState();
}

class _ConSumeState extends State<ConSume> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Stack(
              children: [
                Appbartulam("Tiêu thụ"),
                Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Stack(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/Group 2235.png',
                            fit: BoxFit.contain, // Đảm bảo ảnh hiển thị đúng
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16, left: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 25),
                              child: Text(
                                'Chỉ số 6 tháng gần nhất',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 25),
                              child: Row(
                                children: [
                                  Text(
                                    'Mã DB: ',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white),
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    '12112040608 ',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SvgPicture.asset(
                                    'assets/images/Ionicons.svg',
                                    height: 20,
                                    width: 20,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 25),
                              child: Row(
                                children: [
                                  Text(
                                    'Định mức nước: ',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white),
                                  ),
                                  Text(
                                    '143m3',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 25),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8),
                                    child: Text(
                                      'Tổng tiền  ',
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.white),
                                    ),
                                  ),
                                  Text(
                                    '2.000.000 VNĐ',
                                    style: TextStyle(
                                      fontSize: 30,
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
                    ],
                  ),
                )
              ],
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context)=> ConsumeChart())
                        );
                      },
                      child: Text(
                        'Biểu đồ tiêu thụ',
                        style: TextStyle(
                            color: Color(0xFF0062B6),
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      )),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.93,
                        height: 100,
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: Colors.grey, // Màu viền xám
                            width: 0.5, // Độ dày viền
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Tháng 11/2023',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                            Row(
                              children: [
                                Text('Giá biểu: ',
                                    style: TextStyle(fontSize: 13)),
                                Text("11",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF0062B6))),
                                Spacer(),
                                Text('Định mức: ',
                                    style: TextStyle(fontSize: 13)),
                                Text("32 m3",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF0062B6))),
                              ],
                            ),
                            Row(
                              children: [
                                Text('Chỉ số cũ: ',
                                    style: TextStyle(fontSize: 13)),
                                Text("136 m3",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF0062B6))),
                                Spacer(),
                                Text('Chỉ số mới: ',
                                    style: TextStyle(fontSize: 13)),
                                Text("148 m3",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF0062B6))),
                              ],
                            ),
                            Row(
                              children: [
                                Text('Tiêu thụ: ',
                                    style: TextStyle(fontSize: 13)),
                                Text("12 m3",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF0062B6))),
                                Spacer(),
                                Text('Tổng tiền: ',
                                    style: TextStyle(fontSize: 13)),
                                Text(
                                  "1.500.000 VNĐ",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF0062B6)),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.93,
                        height: 100,
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: Colors.grey, // Màu viền xám
                            width: 0.5, // Độ dày viền
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Tháng 10/2023',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                            Row(
                              children: [
                                Text('Giá biểu: ',
                                    style: TextStyle(fontSize: 13)),
                                Text("11",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF0062B6))),
                                Spacer(),
                                Text('Định mức: ',
                                    style: TextStyle(fontSize: 13)),
                                Text("32 m3",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF0062B6))),
                              ],
                            ),
                            Row(
                              children: [
                                Text('Chỉ số cũ: ',
                                    style: TextStyle(fontSize: 13)),
                                Text("136 m3",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF0062B6))),
                                Spacer(),
                                Text('Chỉ số mới: ',
                                    style: TextStyle(fontSize: 13)),
                                Text("148 m3",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF0062B6))),
                              ],
                            ),
                            Row(
                              children: [
                                Text('Tiêu thụ: ',
                                    style: TextStyle(fontSize: 13)),
                                Text("12 m3",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF0062B6))),
                                Spacer(),
                                Text('Tổng tiền: ',
                                    style: TextStyle(fontSize: 13)),
                                Text(
                                  "1.500.000 VNĐ",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF0062B6)),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.93,
                        height: 100,
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: Colors.grey, // Màu viền xám
                            width: 0.5, // Độ dày viền
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Tháng 09/2023',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                            Row(
                              children: [
                                Text('Giá biểu: ',
                                    style: TextStyle(fontSize: 13)),
                                Text("11",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF0062B6))),
                                Spacer(),
                                Text('Định mức: ',
                                    style: TextStyle(fontSize: 13)),
                                Text("32 m3",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF0062B6))),
                              ],
                            ),
                            Row(
                              children: [
                                Text('Chỉ số cũ: ',
                                    style: TextStyle(fontSize: 13)),
                                Text("136 m3",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF0062B6))),
                                Spacer(),
                                Text('Chỉ số mới: ',
                                    style: TextStyle(fontSize: 13)),
                                Text("148 m3",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF0062B6))),
                              ],
                            ),
                            Row(
                              children: [
                                Text('Tiêu thụ: ',
                                    style: TextStyle(fontSize: 13)),
                                Text("12 m3",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF0062B6))),
                                Spacer(),
                                Text('Tổng tiền: ',
                                    style: TextStyle(fontSize: 13)),
                                Text(
                                  "1.500.000 VNĐ",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF0062B6)),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.93,
                        height: 100,
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: Colors.grey, // Màu viền xám
                            width: 0.5, // Độ dày viền
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Tháng 08/2023',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                            Row(
                              children: [
                                Text('Giá biểu: ',
                                    style: TextStyle(fontSize: 13)),
                                Text("11",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF0062B6))),
                                Spacer(),
                                Text('Định mức: ',
                                    style: TextStyle(fontSize: 13)),
                                Text("32 m3",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF0062B6))),
                              ],
                            ),
                            Row(
                              children: [
                                Text('Chỉ số cũ: ',
                                    style: TextStyle(fontSize: 13)),
                                Text("136 m3",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF0062B6))),
                                Spacer(),
                                Text('Chỉ số mới: ',
                                    style: TextStyle(fontSize: 13)),
                                Text("148 m3",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF0062B6))),
                              ],
                            ),
                            Row(
                              children: [
                                Text('Tiêu thụ: ',
                                    style: TextStyle(fontSize: 13)),
                                Text("12 m3",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF0062B6))),
                                Spacer(),
                                Text('Tổng tiền: ',
                                    style: TextStyle(fontSize: 13)),
                                Text(
                                  "1.500.000 VNĐ",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF0062B6)),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.93,
                        height: 100,
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: Colors.grey, // Màu viền xám
                            width: 0.5, // Độ dày viền
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Tháng 07/2023',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                            Row(
                              children: [
                                Text('Giá biểu: ',
                                    style: TextStyle(fontSize: 13)),
                                Text("11",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF0062B6))),
                                Spacer(),
                                Text('Định mức: ',
                                    style: TextStyle(fontSize: 13)),
                                Text("32 m3",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF0062B6))),
                              ],
                            ),
                            Row(
                              children: [
                                Text('Chỉ số cũ: ',
                                    style: TextStyle(fontSize: 13)),
                                Text("136 m3",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF0062B6))),
                                Spacer(),
                                Text('Chỉ số mới: ',
                                    style: TextStyle(fontSize: 13)),
                                Text("148 m3",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF0062B6))),
                              ],
                            ),
                            Row(
                              children: [
                                Text('Tiêu thụ: ',
                                    style: TextStyle(fontSize: 13)),
                                Text("12 m3",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF0062B6))),
                                Spacer(),
                                Text('Tổng tiền: ',
                                    style: TextStyle(fontSize: 13)),
                                Text(
                                  "1.500.000 VNĐ",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF0062B6)),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.93,
                        height: 100,
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: Colors.grey, // Màu viền xám
                            width: 0.5, // Độ dày viền
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Tháng 06/2023',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                            Row(
                              children: [
                                Text('Giá biểu: ',
                                    style: TextStyle(fontSize: 13)),
                                Text("11",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF0062B6))),
                                Spacer(),
                                Text('Định mức: ',
                                    style: TextStyle(fontSize: 13)),
                                Text("32 m3",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF0062B6))),
                              ],
                            ),
                            Row(
                              children: [
                                Text('Chỉ số cũ: ',
                                    style: TextStyle(fontSize: 13)),
                                Text("136 m3",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF0062B6))),
                                Spacer(),
                                Text('Chỉ số mới: ',
                                    style: TextStyle(fontSize: 13)),
                                Text("148 m3",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF0062B6))),
                              ],
                            ),
                            Row(
                              children: [
                                Text('Tiêu thụ: ',
                                    style: TextStyle(fontSize: 13)),
                                Text("12 m3",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF0062B6))),
                                Spacer(),
                                Text('Tổng tiền: ',
                                    style: TextStyle(fontSize: 13)),
                                Text(
                                  "1.500.000 VNĐ",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF0062B6)),
                                ),
                              ],
                            )
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
      ),
    );
  }
}

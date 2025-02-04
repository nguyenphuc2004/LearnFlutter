import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:te/Invoice/InvoiceDetails.dart';
import 'package:te/appbar/AppBarTuLam.dart';

class PaymentInvoice extends StatefulWidget {
  const PaymentInvoice({super.key});

  @override
  State<PaymentInvoice> createState() => _PaymentInvoiceState();
}

class _PaymentInvoiceState extends State<PaymentInvoice> {
  String? selectedValue;
  final List<String> month = [
    'Năm 2024',
    'Năm 2025',
    'Năm 2026',
    'Năm 2027',
    'Năm 2028',
    'Năm 2029',
    'Năm 2030',
    'Năm 2031',
    'Năm 2032',
    'Năm 2033',
    'Năm 2034',
    'Năm 2035',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          Appbartulam("Hoá đơn thanh toán"),
          Column(
            children: [
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
                              'Hóa đơn cần thanh toán',
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
                          Padding(
                            padding: const EdgeInsets.only(right: 40),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF025297),
                                    borderRadius: BorderRadius.circular(16),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.5),
                                        // Màu bóng và độ trong suốt
                                        blurRadius: 7,
                                        // Bán kính làm mờ của bóng
                                        offset: Offset(
                                            0, 3), // Độ lệch của bóng (x, y)
                                      ),
                                    ],
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
                                        'Thanh toán',
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
                  ],
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Năm thanh toán',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  )),
              Align(
                alignment: Alignment.center, // Căn giữa theo trục ngang
                child: Container(
                  padding: EdgeInsets.only(top: 8),
                  width: MediaQuery.of(context).size.width * 0.93,
                  child: DropdownButtonFormField<String>(
                    hint: const Text("2024"),
                    value: selectedValue,
                    decoration: const InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                      filled: true,
                      fillColor: Color(0xFFEDF6FC),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide.none,
                        // Viền khi không focus
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide.none,
                        // Viền khi không focus
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                    ),
                    items: month
                        .asMap()
                        .entries
                        .map((entry) => DropdownMenuItem<String>(
                              value: (entry.key + 1).toString(),
                              // Giá trị theo số thứ tự
                              child: Row(
                                children: [
                                  Text(entry.value),
                                ],
                              ),
                            ))
                        .toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedValue = newValue;
                      });
                    },
                    menuMaxHeight: 200,
                  ),
                ),
              ),
              SizedBox(height: 16),
              Expanded(
                child: ListView(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.93,
                          height: 110,
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
                              Text('Tháng 02/2024',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                              Row(
                                children: [
                                  Text('1.500.000 VNĐ',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF0062B6))),
                                  Spacer(),
                                  Text("Chưa thanh toán",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF0062B6))),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('Tiêu thụ: ',
                                      style: TextStyle(fontSize: 16)),
                                  Text("12 m3",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF0062B6))),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    InvoiceDetails()
                            )
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.93,
                            height: 110,
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
                                Text('Tháng 02/2024',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold)),
                                Row(
                                  children: [
                                    Text('1.800.000 VNĐ',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF0062B6))),
                                    Spacer(),
                                    Text(
                                        "       Đã thanh toán\n19/01/2024 12:00:00",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF989898))
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text('Tiêu thụ: ',
                                        style: TextStyle(fontSize: 16)),
                                    Text("12 m3",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF0062B6))),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.93,
                          height: 110,
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
                              Text('Tháng 02/2024',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                              Row(
                                children: [
                                  Text('1.500.000 VNĐ',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF0062B6))),
                                  Spacer(),
                                  Text(
                                      "       Đã thanh toán\n19/01/2024 12:00:00",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF989898))),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('Tiêu thụ: ',
                                      style: TextStyle(fontSize: 16)),
                                  Text("12 m3",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF0062B6))),
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
                          height: 110,
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
                              Text('Tháng 02/2024',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                              Row(
                                children: [
                                  Text('1.500.000 VNĐ',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF0062B6))),
                                  Spacer(),
                                  Text(
                                      "       Đã thanh toán\n19/01/2024 12:00:00",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF989898))),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('Tiêu thụ: ',
                                      style: TextStyle(fontSize: 16)),
                                  Text("12 m3",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF0062B6))),
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
                          height: 110,
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
                              Text('Tháng 02/2024',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                              Row(
                                children: [
                                  Text('1.500.000 VNĐ',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF0062B6))),
                                  Spacer(),
                                  Text(
                                      "       Đã thanh toán\n19/01/2024 12:00:00",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF989898))),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('Tiêu thụ: ',
                                      style: TextStyle(fontSize: 16)),
                                  Text("12 m3",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF0062B6))),
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
                          height: 110,
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
                              Text('Tháng 02/2024',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                              Row(
                                children: [
                                  Text('1.500.000 VNĐ',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF0062B6))),
                                  Spacer(),
                                  Text(
                                      "       Đã thanh toán\n19/01/2024 12:00:00",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF989898))),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('Tiêu thụ: ',
                                      style: TextStyle(fontSize: 16)),
                                  Text("12 m3",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF0062B6))),
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
          )
        ],
      ),
    ));
  }
}

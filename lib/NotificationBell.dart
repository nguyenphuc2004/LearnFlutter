import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:te/NotificationDetails.dart';
import 'package:te/appbar/AppBarCommon.dart';

class NotificationBell extends StatefulWidget {
  const NotificationBell({super.key});

  @override
  State<NotificationBell> createState() => _NotificationBellState();
}

class _NotificationBellState extends State<NotificationBell> {
  String? selectedValue, selectedValue2;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 4, // Số lượng tab
        child: Scaffold(
            backgroundColor: Colors.white,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: AppBarCustom(
              title: "",
              hasBackButton: true,
            ),
          ),
          body: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Align(
                  alignment: Alignment.center, // Căn giữa theo trục ngang
                  child: Container(
                    padding: EdgeInsets.only(top: 8),
                    width: MediaQuery.of(context).size.width *
                        0.9, // Chiều rộng 95% màn hình
                    child: DropdownButtonFormField<String>(
                      hint: const Text("00000000000"),
                      value: selectedValue,
                      decoration: const InputDecoration(
                        contentPadding:
                        EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                        filled: true,
                        fillColor: Color(0xFFEDF6FC),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide.none, // Viền khi không focus
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide.none, // Viền khi không focus
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                      ),
                      items: [
                        DropdownMenuItem(
                          value: '1',
                          child: Row(
                            children: const [
                              Text('20026338620'),
                            ],
                          ),
                        ),
                        DropdownMenuItem(
                          value: '2',
                          child: Row(
                            children: const [
                              Text('20026338621'),
                            ],
                          ),
                        ),
                        DropdownMenuItem(
                          value: '3',
                          child: Row(
                            children: const [
                              Text('20026338622'),
                            ],
                          ),
                        ),
                        DropdownMenuItem(
                          value: '4',
                          child: Row(
                            children: const [
                              Text('20026338623'),
                            ],
                          ),
                        ),
                      ],
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedValue2 = newValue;
                        });
                      },
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.95,
                color: const Color(0xFFF1F7FF),
                margin: EdgeInsets.only(top: 10),
                child: TabBar(
                  indicator: BoxDecoration(
                    color: const Color(0xFFD5F0FF),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  indicatorSize: TabBarIndicatorSize.tab,
                  labelColor: const Color(0xFF0062B6),
                  unselectedLabelColor: Colors.grey,
                  labelStyle: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                  tabs: [
                    Expanded(child: Tab(text: 'Tất cả')),
                    Expanded(child: Tab(text: 'Tiền nước')),
                    Expanded(child: Tab(text: 'Nhắc nợ')),
                    Expanded(child: Tab(text: 'Lịch đọc số')),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Expanded(
                child: TabBarView(
                  children: [
                    ListView(
                      children: [
                        ListTile(
                          title: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8),
                                    child: Icon(
                                      Icons.circle, // Dấu chấm
                                      size: 7, // Kích thước dấu chấm
                                      color: Color(0xFF0062B6), // Màu sắc dấu chấm
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Expanded( // Để text không bị tràn ra ngoà
                                    child: Text(
                                      'Thông báo về việc chụp hình hoặc báo chỉ số cho nhân viên biên đọc',
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF0062B6),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 5), // Khoảng cách giữa các phần tử
                              Text(
                                'Do tình hình dịch bệnh Covid-19 vẫn đang diễn ra phức tạp, hiện nay công tác đọc ghi số đồng hồ nước tại nhà khách hàng...',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Color(0xFF6B6B6B),
                                ),
                              ),
                              SizedBox(height: 5), // Khoảng cách giữa các phần tử
                              Row(
                                children: [
                                  Text(
                                    'Tiền nước',
                                    style: TextStyle(
                                      fontSize: 9,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF0062B6),
                                    ),
                                  ),
                                  Container( // Sử dụng Container thay vì SizedBox để hiển thị VerticalDivider
                                    height: 10, // Chiều cao đường kẻ
                                    child: VerticalDivider(
                                      thickness: 1.5, // Độ dày của đường kẻ
                                      color: Color(0xFF6B6B6B), // Màu sắc của đường kẻ
                                      width: 10, // Khoảng cách giữa các phần tử
                                    ),
                                  ),
                                  Text(
                                    '10/11/2023',
                                    style: TextStyle(
                                      fontSize: 9,
                                      color: Color(0xFF6B6B6B),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => NotificationDetails()),
                            );
                          },
                        ),
                        ListTile(
                          title: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8),
                                    child: Icon(
                                      Icons.circle, // Dấu chấm
                                      size: 7, // Kích thước dấu chấm
                                      color: Color(0xFF0062B6), // Màu sắc dấu chấm
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Expanded( // Để text không bị tràn ra ngoà
                                    child: Text(
                                      'Thông báo ngưng cung cấp nước thay đồng hồ tổng vào lúc 22h ngày 08/11/2023 tới 05h ngày 09/11/2023',
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF0062B6),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 5), // Khoảng cách giữa các phần tử
                              Text(
                                'Do tình hình dịch bệnh Covid-19 vẫn đang diễn ra phức tạp, hiện nay công tác đọc ghi số đồng hồ nước tại nhà khách hàng...',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Color(0xFF6B6B6B),
                                ),
                              ),
                              SizedBox(height: 5), // Khoảng cách giữa các phần tử
                              Row(
                                children: [
                                  Text(
                                    'Tiền nước',
                                    style: TextStyle(
                                      fontSize: 9,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF0062B6),
                                    ),
                                  ),
                                  Container( // Sử dụng Container thay vì SizedBox để hiển thị VerticalDivider
                                    height: 10, // Chiều cao đường kẻ
                                    child: VerticalDivider(
                                      thickness: 1.5, // Độ dày của đường kẻ
                                      color: Color(0xFF6B6B6B), // Màu sắc của đường kẻ
                                      width: 10, // Khoảng cách giữa các phần tử
                                    ),
                                  ),
                                  Text(
                                    '10/11/2023',
                                    style: TextStyle(
                                      fontSize: 9,
                                      color: Color(0xFF6B6B6B),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        ListTile(
                          title: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8),
                                    child: Icon(
                                      Icons.circle, // Dấu chấm
                                      size: 7, // Kích thước dấu chấm
                                      color: Color(0xFF0062B6), // Màu sắc dấu chấm
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Expanded( // Để text không bị tràn ra ngoà
                                    child: Text(
                                      'Thông báo ngưng cung cấp nước tại một số khu vực Phường 3 Quận 4',
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF0062B6),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 5), // Khoảng cách giữa các phần tử
                              Text(
                                'Do tình hình dịch bệnh Covid-19 vẫn đang diễn ra phức tạp, hiện nay công tác đọc ghi số đồng hồ nước tại nhà khách hàng...',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Color(0xFF6B6B6B),
                                ),
                              ),
                              SizedBox(height: 5), // Khoảng cách giữa các phần tử
                              Row(
                                children: [
                                  Text(
                                    'Tiền nước',
                                    style: TextStyle(
                                      fontSize: 9,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF0062B6),
                                    ),
                                  ),
                                  Container( // Sử dụng Container thay vì SizedBox để hiển thị VerticalDivider
                                    height: 10, // Chiều cao đường kẻ
                                    child: VerticalDivider(
                                      thickness: 1.5, // Độ dày của đường kẻ
                                      color: Color(0xFF6B6B6B), // Màu sắc của đường kẻ
                                      width: 10, // Khoảng cách giữa các phần tử
                                    ),
                                  ),
                                  Text(
                                    '10/11/2023',
                                    style: TextStyle(
                                      fontSize: 9,
                                      color: Color(0xFF6B6B6B),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        ListTile(
                          title: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8),
                                    child: Icon(
                                      Icons.circle, // Dấu chấm
                                      size: 7, // Kích thước dấu chấm
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Expanded( // Để text không bị tràn ra ngoà
                                    child: Text(
                                      'Thông báo tạm ngưng giao dịch tại công ty Cổ phần Cấp nước',
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 5), // Khoảng cách giữa các phần tử
                              Text(
                                'Do tình hình dịch bệnh Covid-19 vẫn đang diễn ra phức tạp, hiện nay công tác đọc ghi số đồng hồ nước tại nhà khách hàng...',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Color(0xFF6B6B6B),
                                ),
                              ),
                              SizedBox(height: 5), // Khoảng cách giữa các phần tử
                              Row(
                                children: [
                                  Text(
                                    'Tiền nước',
                                    style: TextStyle(
                                      fontSize: 9,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Container( // Sử dụng Container thay vì SizedBox để hiển thị VerticalDivider
                                    height: 10, // Chiều cao đường kẻ
                                    child: VerticalDivider(
                                      thickness: 1.5, // Độ dày của đường kẻ
                                      color: Color(0xFF6B6B6B), // Màu sắc của đường kẻ
                                      width: 10, // Khoảng cách giữa các phần tử
                                    ),
                                  ),
                                  Text(
                                    '10/11/2023',
                                    style: TextStyle(
                                      fontSize: 9,
                                      color: Color(0xFF6B6B6B),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}

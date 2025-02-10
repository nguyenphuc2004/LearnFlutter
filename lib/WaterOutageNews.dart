import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:te/GeneralUse/DropdownbuttonCommon.dart';
import 'package:te/appbar/AppBarCommon.dart';

class WaterOutageNews extends StatefulWidget {
  const WaterOutageNews({super.key});

  @override
  State<WaterOutageNews> createState() => _WaterOutageNewsState();
}

class _WaterOutageNewsState extends State<WaterOutageNews> {
  String? selectedValue, selectedValue2;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: DefaultTabController(
            length: 2,
            child: Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(
                backgroundColor: Colors.white,
                scrolledUnderElevation: 0,
                automaticallyImplyLeading: false,
                title: AppBarCustom(
                  title: "Thông báo cúp nước",
                  hasBackButton: true,
                ),
              ),
              body: Column(
                children: [
                  SizedBox(height: 10),
                  Container(
                    height: 40, // Chiều cao nhỏ hơn
                    width: MediaQuery.of(context).size.width * 0.8,
                    // Khoảng cách 2 bên
                    decoration: BoxDecoration(
                      color: Color(0xFFEDF6FC), // Màu nền TabBar
                      borderRadius: BorderRadius.circular(16), // Bo góc
                    ),
                    child: TabBar(
                      labelColor: Colors.blue, // Màu chữ của tab được chọn
                      unselectedLabelColor: Color(0xFF888888), // Màu chữ của tab không được chọn
                      indicator: BoxDecoration(
                        color: Color(0xFFD5F0FF), // Màu của tab được chọn
                        borderRadius:
                        BorderRadius.circular(16), // Bo góc tab được chọn
                      ),
                      indicatorSize: TabBarIndicatorSize.tab,
                      // Căn chỉnh kích thước dựa trên tab
                      tabs: [
                        Expanded(
                          flex: 1,
                          child: Tab(text: 'Cá nhân'),
                        ),
                        Expanded(
                          flex: 1,
                          child: Tab(
                              text: 'Khu vực'),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.center, // Căn giữa theo trục ngang
                    child: Container(
                      padding: EdgeInsets.only(top: 8),
                      width: MediaQuery.of(context).size.width *
                          0.9, // Chiều rộng 95% màn hình
                      child: DropdownButtonFormField<String>(
                        hint: const Text("Dĩ An"),
                        value: selectedValue,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal:32, vertical: 8),
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide.none,
                            // Viền khi không focus
                            borderRadius:
                            BorderRadius.all(Radius.circular(8)),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide.none,
                            // Viền khi không focus
                            borderRadius:
                            BorderRadius.all(Radius.circular(8)),
                          ),
                        ),
                        items: [
                          DropdownMenuItem(
                            value: '1',
                            child: Row(
                              children: const [
                                Text('20026338620',),
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
                  Divider(
                    height: 0.1,
                    thickness: 1,
                    color: Colors.grey[300],
                    indent: 40,
                    endIndent: 50,
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          decoration: BoxDecoration(
                              color: Color(0xFFF2F2F2)
                          ),
                          child: ListView(
                            children: [
                              ListTile(
                                title: Container(
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12, // Màu bóng (đen nhạt)
                                        blurRadius: 2, // Độ mờ của bóng
                                        spreadRadius: 1, // Độ lan rộng của bóng
                                        offset: Offset(2, 2), // Dịch chuyển bóng (x, y)
                                      ),
                                    ],
                                  ),

                                  child:  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'CLN tháng 05/2024',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF0062B6),
                                        ),
                                      ),
                                      Text(
                                        ' CLN tháng 05/2024',
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: Text(
                                          '06/06/2024 11:48 AM',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black26,
                                              fontStyle: FontStyle.italic
                                          ),
                                        ),
                                      )
                                    ],),
                                ),
                                onTap: () {

                                },
                              ),
                              ListTile(
                                title: Container(
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12, // Màu bóng (đen nhạt)
                                        blurRadius: 2, // Độ mờ của bóng
                                        spreadRadius: 1, // Độ lan rộng của bóng
                                        offset: Offset(2, 2), // Dịch chuyển bóng (x, y)
                                      ),
                                    ],
                                  ),

                                  child:  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'CLN tháng 04/2024',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF0062B6),
                                        ),
                                      ),
                                      Text(
                                        ' CLN tháng 04/2024',
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: Text(
                                          '07/05/2024 09:17 AM',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black26,
                                              fontStyle: FontStyle.italic
                                          ),
                                        ),
                                      )
                                    ],),
                                ),
                                onTap: () {

                                },
                              ),
                              ListTile(
                                title: Container(
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12, // Màu bóng (đen nhạt)
                                        blurRadius: 2, // Độ mờ của bóng
                                        spreadRadius: 1, // Độ lan rộng của bóng
                                        offset: Offset(2, 2), // Dịch chuyển bóng (x, y)
                                      ),
                                    ],
                                  ),

                                  child:  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'CLN tháng 03/2024',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF0062B6),
                                        ),
                                      ),
                                      Text(
                                        ' CLN tháng 03/2024',
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: Text(
                                          '05/04/2024 09:04 AM',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black26,
                                              fontStyle: FontStyle.italic
                                          ),
                                        ),
                                      )
                                    ],),
                                ),
                                onTap: () {

                                },
                              ),
                              ListTile(
                                title: Container(
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12, // Màu bóng (đen nhạt)
                                        blurRadius: 2, // Độ mờ của bóng
                                        spreadRadius: 1, // Độ lan rộng của bóng
                                        offset: Offset(2, 2), // Dịch chuyển bóng (x, y)
                                      ),
                                    ],
                                  ),

                                  child:  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'CLN tháng 02/2024',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF0062B6),
                                        ),
                                      ),
                                      Text(
                                        ' CLN tháng 02/2024',
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: Text(
                                          '18/03/2024 08:49 AM',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black26,
                                              fontStyle: FontStyle.italic
                                          ),
                                        ),
                                      )
                                    ],),
                                ),
                                onTap: () {

                                },
                              ),
                              ListTile(
                                title: Container(
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12, // Màu bóng (đen nhạt)
                                        blurRadius: 2, // Độ mờ của bóng
                                        spreadRadius: 1, // Độ lan rộng của bóng
                                        offset: Offset(2, 2), // Dịch chuyển bóng (x, y)
                                      ),
                                    ],
                                  ),

                                  child:  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'CLN tháng 01/2024',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF0062B6),
                                        ),
                                      ),
                                      Text(
                                        ' CLN tháng 01/2024',
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: Text(
                                          '22/02/2024 10:10 AM',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black26,
                                              fontStyle: FontStyle.italic
                                          ),
                                        ),
                                      )
                                    ],),
                                ),
                                onTap: () {

                                },
                              ),
                              ListTile(
                                title: Container(
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12, // Màu bóng (đen nhạt)
                                        blurRadius: 2, // Độ mờ của bóng
                                        spreadRadius: 1, // Độ lan rộng của bóng
                                        offset: Offset(2, 2), // Dịch chuyển bóng (x, y)
                                      ),
                                    ],
                                  ),

                                  child:  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'CLN tháng 12/2023',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF0062B6),
                                        ),
                                      ),
                                      Text(
                                        ' CLN tháng 12/2023',
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: Text(
                                          '05/01/2024 08:51 AM',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black26,
                                              fontStyle: FontStyle.italic
                                          ),
                                        ),
                                      )
                                    ],),
                                ),
                                onTap: () {

                                },
                              ),
                              ListTile(
                                title: Container(
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12, // Màu bóng (đen nhạt)
                                        blurRadius: 2, // Độ mờ của bóng
                                        spreadRadius: 1, // Độ lan rộng của bóng
                                        offset: Offset(2, 2), // Dịch chuyển bóng (x, y)
                                      ),
                                    ],
                                  ),

                                  child:  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'CLN tháng 11/2024',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF0062B6),
                                        ),
                                      ),
                                      Text(
                                        ' CLN tháng 11/2024',
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: Text(
                                          '19/02/2024 02:58 PM',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black26,
                                              fontStyle: FontStyle.italic
                                          ),
                                        ),
                                      )
                                    ],),
                                ),
                                onTap: () {

                                },
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.9,
                          height: MediaQuery.of(context).size.height * 0.9,
                          decoration: BoxDecoration(
                              color: Colors.white70
                          ),
                          child: ListView(
                            children: [
                              ListTile(
                                title: Row(
                                  children: [
                                    SvgPicture.asset('assets/images/Group 2224.svg'),
                                    SizedBox(width: 10),
                                    Text(
                                      'Thủ tục sang tên đồng hồ nước',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],),
                                onTap: () {

                                },
                              ),
                              Divider(
                                height: 0.1,
                                thickness: 1,
                                color: Colors.grey[300],
                                indent: 15,
                                endIndent: 15,
                              ),
                              ListTile(
                                title: Row(
                                  children: [
                                    SvgPicture.asset('assets/images/Group 2224.svg'),
                                    SizedBox(width: 10),
                                    Text(
                                      'Đăng ký định mức nước tại chung cư',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],),
                                onTap: () {

                                },
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )));
  }
}

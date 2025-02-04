import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:te/appbar/AppBarCommon.dart';

class LinkMaDanhBoDetails extends StatefulWidget {
  const LinkMaDanhBoDetails({super.key});

  @override
  State<LinkMaDanhBoDetails> createState() => _LinkMaDanhBoDetailsState();
}

class _LinkMaDanhBoDetailsState extends State<LinkMaDanhBoDetails> {
  String? selectedValue, selectedValue2;
  final List<String> districts = [
    'Quận 1',
    'Quận 2',
    'Quận 3',
    'Quận 4',
    'Quận 5',
    'Quận 6',
    'Quận 7',
    'Quận 8',
    'Quận 9',
    'Quận 10',
    'Quận 11',
    'Quận 12',
  ];
  final List<String> Xa = [
    'Xã An Phú Tây',
    'Xã Bình Chánh',
    'Xã Bình Hưng',
    'Xã Bình Lợi',
    'Xã Đa Phước',
    'Xã Hưng Long',
    'Xã Lê Minh Xuân',
    'Xã Phạm Văn Hai',
    'Xã Phong Phú',
    'Xã Quy Đức',
    'Xã Tân Kiên',
    'Xã Tân Nhựt',
    'Xã Tân Quý Tây',
    'Xã Vĩnh Lộc A',
    'Xã Vĩnh Lộc B'
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: DefaultTabController(
            length: 2,
            child: Scaffold(
              appBar: AppBar(
                automaticallyImplyLeading: false,
                title: AppBarCustom(
                  title: 'Liên kết mã danh bộ',
                  hasBackButton: true,
                ),
              ),
              body: Column(
                children: [
                  SizedBox(height: 10),
                  Container(
                    height: 48,
                    width: MediaQuery.of(context).size.width *
                        0.9, // Tăng chiều rộng
                    decoration: BoxDecoration(
                      color: Color(0xFFEDF6FC),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: TabBar(
                      labelColor: Colors.blue,
                      unselectedLabelColor: Color(0xFF888888),
                      indicator: BoxDecoration(
                        color: Color(0xFFD5F0FF),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      indicatorSize: TabBarIndicatorSize.tab,
                      tabs: [
                        Tab(text: 'Tìm theo mã danh bộ'),
                        Tab(text: 'Tìm theo địa chỉ nhà'),
                      ],
                    ),
                  ),
                  Expanded(
                      child: TabBarView(children: [
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            width: 310,
                            height: 44,
                            margin: EdgeInsets.only(top: 20),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: '1609-892-2418',
                                hintStyle: const TextStyle(
                                    color: Color(0xFF888888), fontSize: 15),
                                filled: true,
                                fillColor: Colors.white,
                                enabledBorder: const OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFF0062B6)),
                                  // Viền khi không focus
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12)),
                                ),
                                focusedBorder: const OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFF0062B6)),
                                  // Viền khi focus
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12)),
                                ),
                                contentPadding: const EdgeInsets.symmetric(
                                  vertical: 8,
                                  horizontal: 16,
                                ),
                              ),
                              keyboardType: TextInputType.phone,
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              width: MediaQuery.of(context).size.height * 0.2,
                              height: 34,
                              margin: EdgeInsets.only(top: 10),
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [
                                    Color(0xFF003191),
                                    Color(0xFF00AEEF)
                                  ],
                                  // Hai màu gradient
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                ),
                                borderRadius:
                                    BorderRadius.circular(12), // Bo góc
                              ),
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {});
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.transparent,
                                  // Nền trong suốt
                                  shadowColor: Colors.transparent, // Không bóng
                                ),
                                child: const Text(
                                  "Tìm kiếm",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                              child: Padding(
                            padding: EdgeInsets.all(8),
                            child: ListView(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              children: [
                                // Các phần tử khác
                                ListTile(
                                  visualDensity: VisualDensity(
                                      vertical: -4), // Giảm chiều cao
                                  title: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Mã danh bộ',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        '1609-892-2418',
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                  onTap: () {},
                                ),
                                Divider(
                                  height: 0.1,
                                  thickness: 1,
                                  color: Colors.grey[300],
                                  indent: 15,
                                  endIndent: 15,
                                ),
                                ListTile(
                                  visualDensity: VisualDensity(
                                      vertical: -4), // Giảm chiều cao
                                  title: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Điện thoại',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        '0123.456.789',
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                  onTap: () {},
                                ),
                                Divider(
                                  height: 1,
                                  thickness: 1,
                                  color: Colors.grey[300],
                                  indent: 15,
                                  endIndent: 15,
                                ),
                                ListTile(
                                  visualDensity: VisualDensity(vertical: -4),
                                  title: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Tên khách hàng',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'Đỗ Thị Bích Ngọc',
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                  onTap: () {},
                                ),
                                Divider(
                                  height: 1,
                                  thickness: 1,
                                  color: Colors.grey[300],
                                  indent: 15,
                                  endIndent: 15,
                                ),
                                ListTile(
                                  visualDensity: VisualDensity(vertical: -4),
                                  title: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Số hợp đồng',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        '0726996',
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                  onTap: () {},
                                ),
                                Divider(
                                  height: 1,
                                  thickness: 1,
                                  color: Colors.grey[300],
                                  indent: 15,
                                  endIndent: 15,
                                ),
                                ListTile(
                                  visualDensity: VisualDensity(vertical: -4),
                                  title: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Số nhà',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        '54/3B',
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                  onTap: () {},
                                ),
                                Divider(
                                  height: 1,
                                  thickness: 1,
                                  color: Colors.grey[300],
                                  indent: 15,
                                  endIndent: 15,
                                ),
                                ListTile(
                                  visualDensity: VisualDensity(vertical: -4),
                                  title: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Đường',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'Huỳnh Tấn Phát, Phú Mỹ',
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                  onTap: () {},
                                ),
                                Divider(
                                  height: 1,
                                  thickness: 1,
                                  color: Colors.grey[300],
                                  indent: 15,
                                  endIndent: 15,
                                ),
                                ListTile(
                                  visualDensity: VisualDensity(vertical: -4),
                                  title: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Đường/ Quận (huyện)',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'Phú Mỹ, Quận 7',
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                  onTap: () {},
                                ),
                                Divider(
                                  height: 1,
                                  thickness: 1,
                                  color: Colors.grey[300],
                                  indent: 15,
                                  endIndent: 15,
                                ),
                                ListTile(
                                  visualDensity: VisualDensity(vertical: -4),
                                  title: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Cỡ đồng hồ',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        '15',
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                  onTap: () {},
                                ),
                                Divider(
                                  height: 1,
                                  thickness: 1,
                                  color: Colors.grey[300],
                                  indent: 15,
                                  endIndent: 15,
                                ),
                                ListTile(
                                  visualDensity: VisualDensity(vertical: -4),
                                  title: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Tổng định mức',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        '40',
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                  onTap: () {},
                                ),
                                Divider(
                                  height: 1,
                                  thickness: 1,
                                  color: Colors.grey[300],
                                  indent: 15,
                                  endIndent: 15,
                                ),
                                ListTile(
                                  visualDensity: VisualDensity(vertical: -4),
                                  title: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Giá biểu',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        '11',
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                  onTap: () {},
                                ),
                                Divider(
                                  height: 1,
                                  thickness: 1,
                                  color: Colors.grey[300],
                                  indent: 15,
                                  endIndent: 15,
                                ),
                                ListTile(
                                  visualDensity: VisualDensity(vertical: -4),
                                  title: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Ngày lắp đặt',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        '17/10/2022 - 12:00 AM',
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                  onTap: () {},
                                ),
                                Divider(
                                  height: 1,
                                  thickness: 1,
                                  color: Colors.grey[300],
                                  indent: 15,
                                  endIndent: 15,
                                ),
                                ListTile(
                                  visualDensity: VisualDensity(vertical: -4),
                                  title: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Số thân ĐHN',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        '106619',
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                  onTap: () {},
                                ),
                              ],
                            ),
                          )),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              width: 310,
                              height: 44,
                              margin: EdgeInsets.only(top: 10),
                              decoration: BoxDecoration(
                                color: Color(0xFF70C52E),
                                borderRadius:
                                    BorderRadius.circular(12), // Bo góc
                              ),
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {});
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.transparent,
                                  // Nền trong suốt
                                  shadowColor: Colors.transparent, // Không bóng
                                ),
                                child: const Text(
                                  "LIÊN KẾT",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          )
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 8),
                                    child: Text(
                                      "Quận (huyện)",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF625D5D)),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    // Căn giữa theo trục ngang
                                    child: Container(
                                      padding: EdgeInsets.only(top: 8),
                                      width: MediaQuery.of(context).size.width *
                                          0.45,
                                      child: DropdownButtonFormField<String>(
                                        hint: const Text("Quận/ huyện"),
                                        value: selectedValue,
                                        decoration: const InputDecoration(
                                          contentPadding: EdgeInsets.symmetric(
                                              horizontal: 12, vertical: 8),
                                          fillColor: Color(0xFFEDF6FC),
                                          enabledBorder:
                                              const OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Color(0xFF0062B6)),
                                            // Viền khi không focus
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(12)),
                                          ),
                                          focusedBorder:
                                              const OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Color(0xFF0062B6)),
                                            // Viền khi focus
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(12)),
                                          ),
                                        ),
                                        items: districts
                                            .asMap()
                                            .entries
                                            .map((entry) =>
                                                DropdownMenuItem<String>(
                                                  value: (entry.key + 1)
                                                      .toString(),
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
                                            selectedValue2 = newValue;
                                          });
                                        },
                                        menuMaxHeight: 200,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 8),
                                    child: Text(
                                      "Phường (xã)",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF625D5D)),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    // Căn giữa theo trục ngang
                                    child: Container(
                                      padding: EdgeInsets.only(top: 8),
                                      width: MediaQuery.of(context).size.width *
                                          0.45,
                                      child: DropdownButtonFormField<String>(
                                        hint: const Text("Phường/ xã"),
                                        value: selectedValue,
                                        decoration: const InputDecoration(
                                          contentPadding: EdgeInsets.symmetric(
                                              horizontal: 12, vertical: 8),
                                          fillColor: Color(0xFFEDF6FC),
                                          enabledBorder:
                                              const OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Color(0xFF0062B6)),
                                            // Viền khi không focus
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(12)),
                                          ),
                                          focusedBorder:
                                              const OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Color(0xFF0062B6)),
                                            // Viền khi focus
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(12)),
                                          ),
                                        ),
                                        items: Xa.asMap()
                                            .entries
                                            .map((entry) =>
                                                DropdownMenuItem<String>(
                                                  value: (entry.key + 1)
                                                      .toString(),
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
                                            selectedValue2 = newValue;
                                          });
                                        },
                                        menuMaxHeight: 200,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 8),
                                    child: Text(
                                      "Đường",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF625D5D)),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    // Căn giữa theo trục ngang
                                    child: Container(
                                      padding: EdgeInsets.only(top: 8),
                                      width: MediaQuery.of(context).size.width *
                                          0.45,
                                      child: DropdownButtonFormField<String>(
                                        hint: const Text("Tên đường"),
                                        value: selectedValue,
                                        decoration: const InputDecoration(
                                          contentPadding: EdgeInsets.symmetric(
                                              horizontal: 12, vertical: 8),
                                          fillColor: Color(0xFFEDF6FC),
                                          enabledBorder:
                                              const OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Color(0xFF0062B6)),
                                            // Viền khi không focus
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(12)),
                                          ),
                                          focusedBorder:
                                              const OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Color(0xFF0062B6)),
                                            // Viền khi focus
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(12)),
                                          ),
                                        ),
                                        items: districts
                                            .asMap()
                                            .entries
                                            .map((entry) =>
                                                DropdownMenuItem<String>(
                                                  value: (entry.key + 1)
                                                      .toString(),
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
                                            selectedValue2 = newValue;
                                          });
                                        },
                                        menuMaxHeight: 200,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 8),
                                    child: Text(
                                      "Số nhà",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF625D5D)),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    // Căn giữa theo trục ngang
                                    child: Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.45,
                                      margin: EdgeInsets.only(top: 8),
                                      child: TextField(
                                        decoration: InputDecoration(
                                          hintText: 'Số nhà',
                                          hintStyle: const TextStyle(
                                              color: Color(0xFF888888),
                                              fontSize: 15),
                                          fillColor: Color(0xFFEDF6FC),
                                          enabledBorder:
                                              const OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Color(0xFF0062B6)),
                                            // Viền khi không focus
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(12)),
                                          ),
                                          focusedBorder:
                                              const OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Color(0xFF0062B6)),
                                            // Viền khi focus
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(12)),
                                          ),
                                          contentPadding:
                                              const EdgeInsets.symmetric(
                                            vertical: 8,
                                            horizontal: 16,
                                          ),
                                        ),
                                        keyboardType: TextInputType.text,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              width: MediaQuery.of(context).size.height * 0.2,
                              height: 34,
                              margin: EdgeInsets.only(top: 20),
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [
                                    Color(0xFF003191),
                                    Color(0xFF00AEEF)
                                  ],
                                  // Hai màu gradient
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                ),
                                borderRadius:
                                    BorderRadius.circular(12), // Bo góc
                              ),
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {});
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.transparent,
                                  // Nền trong suốt
                                  shadowColor: Colors.transparent, // Không bóng
                                ),
                                child: const Text(
                                  "Tìm kiếm",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            width: 383,
                            height: 125,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12), // Bo góc
                              gradient: LinearGradient(
                                colors: [Color(0xFF003191), Color(0xFF00AEEF)],
                                // Gradient màu viền
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                            ),
                            child: Container(
                              margin: EdgeInsets.all(2.0), // Khoảng cách viền
                              padding: EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                color: Colors.white, // Nền trắng bên trong
                                borderRadius:
                                BorderRadius.circular(10), // Bo góc khớp với viền
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'DO THI BICH NGOC',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Địa chỉ: ',
                                        style: TextStyle(
                                            fontSize: 18, fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        '00A đường Nguyễn Văn Đậu',
                                        style: TextStyle(
                                          fontSize: 18,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'Chọn',
                                              style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                decoration: TextDecoration.underline,
                                                decorationColor: Colors.blue,
                                                decorationThickness: 2,
                                                color: Colors.blue, // Màu chữ "Chọn"
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ]))
                ],
              ),
            )));
  }
}

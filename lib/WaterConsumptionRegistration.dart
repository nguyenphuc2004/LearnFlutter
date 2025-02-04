import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:te/appbar/AppBarCommon.dart';

import 'Notification/NotificationStatus.dart';

class WaterConsumptionRegistration extends StatefulWidget {
  const WaterConsumptionRegistration({super.key});

  @override
  State<WaterConsumptionRegistration> createState() =>
      _WaterConsumptionRegistrationState();
}

class _WaterConsumptionRegistrationState
    extends State<WaterConsumptionRegistration> {
  String _selectedValue = 'Option 1';
  String? selectedValue, selectedValue2;
  final List<String> districts = [
    'Tháng 1',
    'Tháng 2',
    'Tháng 3',
    'Tháng 4',
    'Tháng 5',
    'Tháng 6',
    'Tháng 7',
    'Tháng 8',
    'Tháng 9',
    'Tháng 10',
    'Tháng 11',
    'Tháng 12',
  ];
  List<Map<String, String>> options = [
    {'value': 'Option 1', 'label': 'Chờ duyệt'},
    {'value': 'Option 2', 'label': 'Đã duyệt'},
    {'value': 'Option 3', 'label': 'Trùng'},
    {'value': 'Option 4', 'label': 'Đã đăng ký'},
    {'value': 'Option 5', 'label': 'BS CT07-08'},
    {'value': 'Option 6', 'label': 'BS Số định danh'},
    {'value': 'Option 7', 'label': 'BS Hình ảnh'},
    {'value': 'Option 8', 'label': 'Không đủ điều kiện'},
    {'value': 'Option 9', 'label': 'Đã cắt chuyển'},
  ];
  String getStatusLabel(String value) {
    return options.firstWhere((option) => option['value'] == value)['label']!;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: DefaultTabController(
      length: 2, // Số lượng tab
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: AppBarCustom(
            title: "Đăng ký định mức",
            hasBackButton: true,
          ),
        ),
        body: Column(
          children: [
            SizedBox(height: 10),
            Container(
              height: 48, // Chiều cao nhỏ hơn
              width: MediaQuery.of(context).size.width * 0.8,
              // Khoảng cách 2 bên
              decoration: BoxDecoration(
                color: Color(0xFFEDF6FC), // Màu nền TabBar
                borderRadius: BorderRadius.circular(8), // Bo góc
              ),
              child: TabBar(
                labelColor: Colors.blue,
                // Màu chữ của tab được chọn
                unselectedLabelColor: Color(0xFF888888),
                // Màu chữ của tab không được chọn
                indicator: BoxDecoration(
                  color: Color(0xFFD5F0FF), // Màu của tab được chọn
                  borderRadius:
                      BorderRadius.circular(8), // Bo góc tab được chọn
                ),
                indicatorSize: TabBarIndicatorSize.tab,
                // Căn chỉnh kích thước dựa trên tab
                tabs: [
                  Expanded(
                    flex: 1,
                    child: Tab(text: 'Đăng ký mới', icon: Icon(Icons.person)),
                  ),
                  Expanded(
                    flex: 1,
                    child: Tab(
                        text: 'Lịch sử định danh', icon: Icon(Icons.history)),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 16, top: 8),
                              child: Text(
                                "Mã danh bộ",
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
                                width: MediaQuery.of(context).size.width * 0.95,
                                margin: EdgeInsets.only(top: 8),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Nhập mã danh bộ',
                                    hintStyle: const TextStyle(
                                        color: Color(0xFF888888), fontSize: 15),
                                    filled: true,
                                    fillColor: Color(0xFFEDF6FC),
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
                                    prefixIcon: Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                        'assets/images/Vector16.svg',
                                      ),
                                    ),
                                  ),
                                  keyboardType: TextInputType.phone,
                                ),
                              ),
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 16, top: 8),
                              child: Text(
                                "Định mức nước",
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
                                width: MediaQuery.of(context).size.width * 0.95,
                                margin: EdgeInsets.only(top: 8),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Định mức nước hiện tại',
                                    hintStyle: const TextStyle(
                                        color: Color(0xFF888888), fontSize: 15),
                                    filled: true,
                                    fillColor: Color(0xFFEDF6FC),
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
                                    prefixIcon: Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                        'assets/images/Vector16.svg',
                                      ),
                                    ),
                                  ),
                                  keyboardType: TextInputType.number,
                                ),
                              ),
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 16, top: 8),
                              child: Text(
                                "Họ và tên người đăng ký",
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
                                width: MediaQuery.of(context).size.width * 0.95,
                                margin: EdgeInsets.only(top: 8),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Nhập mã danh bộ',
                                    hintStyle: const TextStyle(
                                        color: Color(0xFF888888), fontSize: 15),
                                    filled: true,
                                    fillColor: Color(0xFFEDF6FC),
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
                                    prefixIcon: Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                        'assets/images/Group 1831.svg',
                                      ),
                                    ),
                                  ),
                                  keyboardType: TextInputType.number,
                                ),
                              ),
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 16, top: 8),
                              child: Text(
                                "Số điện thoại",
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
                                width: MediaQuery.of(context).size.width * 0.95,
                                margin: EdgeInsets.only(top: 8),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Nhập số điện thoại',
                                    hintStyle: const TextStyle(
                                        color: Color(0xFF888888), fontSize: 15),
                                    filled: true,
                                    fillColor: Color(0xFFEDF6FC),
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
                                    prefixIcon: Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                        'assets/images/Vector17.svg',
                                      ),
                                    ),
                                  ),
                                  keyboardType: TextInputType.phone,
                                ),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(top: 16, left: 16, right: 16),
                          child: Text(
                            'Nhân khẩu',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 8, left: 16, right: 16),
                          child: Text(
                            'Vui lòng nhập đầy đủ thông tin, trường hợp khách hàng có nơi thường trú ngoài TP.HCM thì bổ sung thêm giấy xác nhận thông tin cư trú của cơ quan có thẩm quyền theo mẫu CT07 hoặc CT08.',
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment
                                .spaceAround, // Chia đều không gian
                            children: [
                              // Mặt trước CCCD Container
                              Container(
                                width: 100,
                                height: 157,
                                margin: EdgeInsets.only(bottom: 45),
                                decoration: BoxDecoration(
                                  color: Color(0xFFEDF6FC),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.camera_alt,
                                      color: Color(0xFF888888), // Màu của icon
                                    ),
                                    Text('Mặt trước CCCD\ngiấy định danh',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(fontSize: 10)),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              // Phần nhập thông tin
                              Expanded(
                                flex: 3,
                                child: Column(
                                  children: [
                                    // TextField - Nhập số điện thoại
                                    Container(
                                      width: double.infinity,
                                      height: 46,
                                      margin: EdgeInsets.only(top: 8),
                                      child: TextField(
                                        decoration: InputDecoration(
                                          hintText: 'Nhập số điện thoại',
                                          hintStyle: const TextStyle(
                                              color: Color(0xFF888888),
                                              fontSize: 15),
                                          filled: true,
                                          fillColor: Color(0xFFEDF6FC),
                                          enabledBorder:
                                              const OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(8)),
                                          ),
                                          focusedBorder:
                                              const OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(8)),
                                          ),
                                        ),
                                        keyboardType: TextInputType.phone,
                                      ),
                                    ),
                                    // TextField - Nhập họ và tên
                                    Container(
                                      width: double.infinity,
                                      height: 46,
                                      margin: EdgeInsets.only(top: 8),
                                      child: TextField(
                                        decoration: InputDecoration(
                                          hintText: 'Họ và tên',
                                          hintStyle: const TextStyle(
                                              color: Color(0xFF888888),
                                              fontSize: 15),
                                          filled: true,
                                          fillColor: Color(0xFFEDF6FC),
                                          enabledBorder:
                                              const OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(8)),
                                          ),
                                          focusedBorder:
                                              const OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(8)),
                                          ),
                                        ),
                                      ),
                                    ),
                                    // TextField - Nhập địa chỉ
                                    Container(
                                      width: double.infinity,
                                      height: 46,
                                      margin: EdgeInsets.only(top: 8),
                                      child: TextField(
                                        decoration: InputDecoration(
                                          hintText: 'Địa chỉ',
                                          hintStyle: const TextStyle(
                                              color: Color(0xFF888888),
                                              fontSize: 15),
                                          filled: true,
                                          fillColor: Color(0xFFEDF6FC),
                                          enabledBorder:
                                              const OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(8)),
                                          ),
                                          focusedBorder:
                                              const OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(8)),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      height: 46,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Expanded(
                                            child: Transform.scale(
                                              scale: 1,
                                              // Điều chỉnh kích thước nút Radio
                                              child: RadioListTile(
                                                title: Transform.translate(
                                                  offset: Offset(-10, 0),
                                                  // Dịch chữ gần hơn nút
                                                  child: FittedBox(
                                                    child: Text(
                                                      'Thường trú',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFF625D5D),
                                                        fontSize:
                                                            12, // Kích thước chữ
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                value: 'Option 1',
                                                groupValue: _selectedValue,
                                                onChanged: (value) {
                                                  setState(() {
                                                    _selectedValue = value!;
                                                  });
                                                },
                                                activeColor: Color(0xFF0062B6),
                                                // Màu nút khi được chọn
                                                contentPadding: EdgeInsets.zero,
                                                // Xóa padding mặc định
                                                visualDensity: VisualDensity(
                                                    horizontal:
                                                        -4), // Giảm khoảng cách
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Transform.scale(
                                              scale: 0.8,
                                              // Điều chỉnh kích thước nút Radio
                                              child: RadioListTile(
                                                title: Transform.translate(
                                                  offset: Offset(-10, 0),
                                                  // Dịch chữ gần hơn nút
                                                  child: FittedBox(
                                                    child: Text(
                                                      'Tạm trú',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFF625D5D),
                                                        fontSize:
                                                            12, // Kích thước chữ
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                value: 'Option 2',
                                                groupValue: _selectedValue,
                                                onChanged: (value) {
                                                  setState(() {
                                                    _selectedValue = value!;
                                                  });
                                                },
                                                activeColor: Color(0xFF0062B6),
                                                // Màu nút khi được chọn
                                                contentPadding: EdgeInsets.zero,
                                                // Xóa padding mặc định
                                                visualDensity: VisualDensity(
                                                    horizontal:
                                                        -4), // Giảm khoảng cách
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // Icon delete
                              Container(
                                child: Icon(
                                  Icons.delete_outline_outlined,
                                  color: Colors.red,
                                  size: 32,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 16, right: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment
                                .spaceAround, // Chia đều không gian
                            children: [
                              // Mặt trước CCCD Container
                              Column(
                                children: [
                                  Container(
                                    width: 100,
                                    height: 157,
                                    margin: EdgeInsets.only(bottom: 8),
                                    decoration: BoxDecoration(
                                      color: Color(0xFFEDF6FC),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.camera_alt,
                                          color:
                                              Color(0xFF888888), // Màu của icon
                                        ),
                                        Text(
                                          'Mặt trước CCCD\ngiấy định danh',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(fontSize: 10),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 100,
                                    height: 92,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFEDF6FC),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.camera_alt,
                                          color:
                                              Color(0xFF888888), // Màu của icon
                                        ),
                                        Text('Upload CT07, CT08',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontSize: 10)),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              // Phần nhập thông tin
                              Expanded(
                                flex: 3,
                                child: Column(
                                  children: [
                                    // TextField - Nhập số điện thoại
                                    Container(
                                      width: double.infinity,
                                      height: 46,
                                      margin: EdgeInsets.only(top: 8),
                                      child: TextField(
                                        decoration: InputDecoration(
                                          hintText: 'Nhập số điện thoại',
                                          hintStyle: const TextStyle(
                                              color: Color(0xFF888888),
                                              fontSize: 15),
                                          filled: true,
                                          fillColor: Color(0xFFEDF6FC),
                                          enabledBorder:
                                              const OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(8)),
                                          ),
                                          focusedBorder:
                                              const OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(8)),
                                          ),
                                        ),
                                        keyboardType: TextInputType.phone,
                                      ),
                                    ),
                                    // TextField - Nhập họ và tên
                                    Container(
                                      width: double.infinity,
                                      height: 46,
                                      margin: EdgeInsets.only(top: 8),
                                      child: TextField(
                                        decoration: InputDecoration(
                                          hintText: 'Họ và tên',
                                          hintStyle: const TextStyle(
                                              color: Color(0xFF888888),
                                              fontSize: 15),
                                          filled: true,
                                          fillColor: Color(0xFFEDF6FC),
                                          enabledBorder:
                                              const OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(8)),
                                          ),
                                          focusedBorder:
                                              const OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(8)),
                                          ),
                                        ),
                                      ),
                                    ),
                                    // TextField - Nhập địa chỉ
                                    Container(
                                      width: double.infinity,
                                      height: 46,
                                      margin: EdgeInsets.only(top: 8),
                                      child: TextField(
                                        decoration: InputDecoration(
                                          hintText: 'Địa chỉ',
                                          hintStyle: const TextStyle(
                                              color: Color(0xFF888888),
                                              fontSize: 15),
                                          filled: true,
                                          fillColor: Color(0xFFEDF6FC),
                                          enabledBorder:
                                              const OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(8)),
                                          ),
                                          focusedBorder:
                                              const OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(8)),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      height: 46,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Expanded(
                                            child: Transform.scale(
                                              scale: 1,
                                              // Điều chỉnh kích thước nút Radio
                                              child: RadioListTile(
                                                title: Transform.translate(
                                                  offset: Offset(-10, 0),
                                                  // Dịch chữ gần hơn nút
                                                  child: FittedBox(
                                                    child: Text(
                                                      'Thường trú',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFF625D5D),
                                                        fontSize:
                                                            12, // Kích thước chữ
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                value: 'Option 1',
                                                groupValue: _selectedValue,
                                                onChanged: (value) {
                                                  setState(() {
                                                    _selectedValue = value!;
                                                  });
                                                },
                                                activeColor: Color(0xFF0062B6),
                                                // Màu nút khi được chọn
                                                contentPadding: EdgeInsets.zero,
                                                // Xóa padding mặc định
                                                visualDensity: VisualDensity(
                                                    horizontal:
                                                        -4), // Giảm khoảng cách
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Transform.scale(
                                              scale: 0.8,
                                              // Điều chỉnh kích thước nút Radio
                                              child: RadioListTile(
                                                title: Transform.translate(
                                                  offset: Offset(-10, 0),
                                                  // Dịch chữ gần hơn nút
                                                  child: FittedBox(
                                                    child: Text(
                                                      'Tạm trú',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFF625D5D),
                                                        fontSize:
                                                            12, // Kích thước chữ
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                value: 'Option 2',
                                                groupValue: _selectedValue,
                                                onChanged: (value) {
                                                  setState(() {
                                                    _selectedValue = value!;
                                                  });
                                                },
                                                activeColor: Color(0xFF0062B6),
                                                // Màu nút khi được chọn
                                                contentPadding: EdgeInsets.zero,
                                                // Xóa padding mặc định
                                                visualDensity: VisualDensity(
                                                    horizontal:
                                                        -4), // Giảm khoảng cách
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      child: Row(
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Align(
                                                alignment: Alignment.center,
                                                // Căn giữa theo trục ngang
                                                child: Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.29,
                                                  child:
                                                      DropdownButtonFormField<
                                                          String>(
                                                    hint: const Text("Tháng"),
                                                    value: selectedValue,
                                                    decoration:
                                                        const InputDecoration(
                                                      contentPadding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 12,
                                                              vertical: 8),
                                                      filled: true,
                                                      fillColor:
                                                          Color(0xFFEDF6FC),
                                                      enabledBorder:
                                                          const OutlineInputBorder(
                                                        borderSide:
                                                            BorderSide.none,
                                                        // Viền khi không focus
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    8)),
                                                      ),
                                                      focusedBorder:
                                                          const OutlineInputBorder(
                                                        borderSide:
                                                            BorderSide.none,
                                                        // Viền khi không focus
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    8)),
                                                      ),
                                                    ),
                                                    items: districts
                                                        .asMap()
                                                        .entries
                                                        .map((entry) =>
                                                            DropdownMenuItem<
                                                                String>(
                                                              value: (entry
                                                                          .key +
                                                                      1)
                                                                  .toString(),
                                                              // Giá trị theo số thứ tự
                                                              child: Row(
                                                                children: [
                                                                  Text(entry
                                                                      .value),
                                                                ],
                                                              ),
                                                            ))
                                                        .toList(),
                                                    onChanged:
                                                        (String? newValue) {
                                                      setState(() {
                                                        selectedValue2 =
                                                            newValue;
                                                      });
                                                    },
                                                    menuMaxHeight: 200,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                          SizedBox(width: 3),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Align(
                                                alignment: Alignment.center,
                                                // Căn giữa theo trục ngang
                                                child: Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.29,
                                                  child:
                                                      DropdownButtonFormField<
                                                          String>(
                                                    hint: const Text("Năm"),
                                                    value: selectedValue,
                                                    decoration:
                                                        const InputDecoration(
                                                      contentPadding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 12,
                                                              vertical: 8),
                                                      filled: true,
                                                      fillColor:
                                                          Color(0xFFEDF6FC),
                                                      enabledBorder:
                                                          const OutlineInputBorder(
                                                        borderSide:
                                                            BorderSide.none,
                                                        // Viền khi không focus
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    8)),
                                                      ),
                                                      focusedBorder:
                                                          const OutlineInputBorder(
                                                        borderSide:
                                                            BorderSide.none,
                                                        // Viền khi không focus
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    8)),
                                                      ),
                                                    ),
                                                    items: districts
                                                        .asMap()
                                                        .entries
                                                        .map((entry) =>
                                                            DropdownMenuItem<
                                                                String>(
                                                              value: (entry
                                                                          .key +
                                                                      1)
                                                                  .toString(),
                                                              // Giá trị theo số thứ tự
                                                              child: Row(
                                                                children: [
                                                                  Text(entry
                                                                      .value),
                                                                ],
                                                              ),
                                                            ))
                                                        .toList(),
                                                    onChanged:
                                                        (String? newValue) {
                                                      setState(() {
                                                        selectedValue2 =
                                                            newValue;
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
                                    ),
                                  ],
                                ),
                              ),
                              // Icon delete
                              Container(
                                child: Icon(
                                  Icons.delete_outline_outlined,
                                  color: Colors.red,
                                  size: 32,
                                ),
                              ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            margin: EdgeInsets.only(right: 20, top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SvgPicture.asset('assets/images/Group 242.svg'),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Thêm CCCD',
                                  style: TextStyle(
                                      fontSize: 14, color: Color(0xFF0062B6)),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            width: 370,
                            height: 60,
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [Color(0xFF003191), Color(0xFF00AEEF)],
                                // Hai màu gradient
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                              borderRadius: BorderRadius.circular(12), // Bo góc
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
                                "Gửi",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 100)
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 10, bottom: 10),
                          width: MediaQuery.of(context).size.width * 0.85,
                          child: Text(
                            'Danh sách CCCD khách hàng đã đăng ký và trạng thái đã được xử lí.',
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                        GestureDetector(
                          onTap: () async {
                            showDialog<String>(
                              context: context,
                              builder: (context) {
                                return NotificationStatus();
                              },
                            ).then((selectedValue) {
                              // Kiểm tra và cập nhật giá trị khi người dùng chọn một trạng thái
                              if (selectedValue != null) {
                                setState(() {
                                  _selectedValue = selectedValue;
                                });
                              }
                            });
                          },
                          child: Align(
                            alignment: Alignment.center,
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.9,
                              height: MediaQuery.of(context).size.width * 0.12,
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              decoration: BoxDecoration(
                                color: Color(0xFFEDF6FC),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(getStatusLabel(_selectedValue)),
                                  Icon(Icons.arrow_drop_down),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10, bottom: 10),
                          padding: EdgeInsets.all(16),
                          width: MediaQuery.of(context).size.width * 0.9,
                          height: MediaQuery.of(context).size.width * 0.7,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                // Màu của bóng (với độ mờ)
                                spreadRadius: 2,
                                // Độ lan của bóng
                                blurRadius: 5,
                                // Độ mờ của bóng
                                offset: Offset(2, 3), // Vị trí của bóng (x, y)
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text('54849446',
                                      style: TextStyle(
                                          fontSize: 17, color: Colors.blue)),
                                  Spacer(),
                                  Container(
                                    width: 72,
                                    height: 27,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF70C52E),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      // Sử dụng Center thay cho Align
                                      child: Text(
                                        'Đã duyệt',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    width: 72,
                                    height: 27,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFAA68D2),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      // Sử dụng Center thay cho Align
                                      child: Text(
                                        'Tạm trú',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Họ và tên: ',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text('Lê Văn Thiện ',
                                      style: TextStyle(fontSize: 14))
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Địa chỉ: ',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text('Gia lập, Gia viễn, Ninh Bình',
                                      style: TextStyle(fontSize: 14))
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Hạn tạm trú: ',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text('04/2023',
                                      style: TextStyle(fontSize: 14))
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Image.asset(
                                          'assets/images/8bf058fe053a152f0854badcc8bce242(1) 1.png'),
                                      Text('Mặt trước CCCD,\n giấy định danh',
                                          style: TextStyle(fontSize: 10))
                                    ],
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    children: [
                                      Image.asset(
                                          'assets/images/tải xuống 2.png'),
                                      Text('Mặt sau CCCD,  giấy định danh',
                                          style: TextStyle(fontSize: 10))
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(height: 10),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Đã xử lý thông tin thành công',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF006CB5)),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10, bottom: 10),
                          padding: EdgeInsets.all(16),
                          width: MediaQuery.of(context).size.width * 0.9,
                          height: MediaQuery.of(context).size.width * 0.65,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                // Màu của bóng (với độ mờ)
                                spreadRadius: 2,
                                // Độ lan của bóng
                                blurRadius: 5,
                                // Độ mờ của bóng
                                offset: Offset(2, 3), // Vị trí của bóng (x, y)
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text('54849446',
                                      style: TextStyle(
                                          fontSize: 17, color: Colors.blue)),
                                  Spacer(),
                                  Container(
                                    width: 72,
                                    height: 27,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFDC1616),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      // Sử dụng Center thay cho Align
                                      child: Text(
                                        'Chưa duyệt',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    width: 72,
                                    height: 27,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFF69400),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      // Sử dụng Center thay cho Align
                                      child: Text(
                                        'Thường trú',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Họ và tên: ',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text('Lê Văn Thiện ',
                                      style: TextStyle(fontSize: 14))
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Địa chỉ: ',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text('Gia lập, Gia viễn, Ninh Bình',
                                      style: TextStyle(fontSize: 14))
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Image.asset(
                                          'assets/images/8bf058fe053a152f0854badcc8bce242(1) 1.png'),
                                      Text('Mặt trước CCCD,\n giấy định danh',
                                          style: TextStyle(fontSize: 10))
                                    ],
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    children: [
                                      Image.asset(
                                          'assets/images/tải xuống 2.png'),
                                      Text('Mặt sau CCCD,  giấy định danh',
                                          style: TextStyle(fontSize: 10))
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(height: 10),
                              Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  width: 72,
                                  height: 27,
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
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(
                                    // Sử dụng Center thay cho Align
                                    child: TextButton(
                                      onPressed: () {},
                                      style: TextButton.styleFrom(
                                        padding: EdgeInsets
                                            .zero, // Loại bỏ padding mặc định của TextButton
                                      ),
                                      child: Text(
                                        'Cập nhật',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
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
    ));
  }
}

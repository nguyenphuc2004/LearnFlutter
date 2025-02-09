import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:te/appbar/AppBarCommon.dart';

class NewAttachRegistration extends StatefulWidget {
  const NewAttachRegistration({super.key});

  @override
  State<NewAttachRegistration> createState() => _NewAttachRegistrationState();
}

class _NewAttachRegistrationState extends State<NewAttachRegistration> {
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

  List<File> _images = [];

  Future<void> _pickImages() async {
    // Kiểm tra xem số lượng ảnh đã chọn có lớn hơn hoặc bằng 3 chưa
    if (_images.length >= 3) {
      // Nếu đã chọn đủ 3 ảnh, hiển thị thông báo và không cho phép chọn thêm
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: Text('Đã chọn đủ 3 ảnh!')), // Thông báo cho người dùng
      );
      return; // Dừng hàm nếu đã đạt giới hạn ảnh
    }

    final picker = ImagePicker(); // Khởi tạo ImagePicker để chọn ảnh
    final pickedFiles =
    await picker.pickMultiImage(); // Mở thư viện ảnh và chọn nhiều ảnh

    if (pickedFiles != null) {
      // Nếu người dùng chọn ít nhất một ảnh
      setState(() {
        // Cập nhật lại UI
        // Thêm các ảnh đã chọn vào danh sách _images, nhưng chỉ thêm khi số lượng chưa đạt 3
        _images.addAll(
          pickedFiles
              .take(
              3 - _images.length) // Lấy tối đa số ảnh cần thêm để đạt 3 ảnh
              .map((pickedFile) =>
              File(pickedFile.path)) // Chuyển mỗi ảnh thành đối tượng File
              .toList(), // Chuyển thành List<File> để thêm vào danh sách
        );
      });
    }
  }
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
          title: 'Đăng ký gắn mới',
          hasBackButton: true,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16, top: 16),
                  child: Text(
                    "Người đắng ký",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF625D5D)),
                  ),
                ),
                Align(
                  alignment: Alignment.center, // Căn giữa theo trục ngang
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.95,
                    margin: EdgeInsets.only(top: 8),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Họ và tên người đăng ký',
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
                      ),
                      keyboardType: TextInputType.text,
                    ),
                  ),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16, top: 16),
                  child: Text(
                    "Địa chỉ lắp đặt",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF625D5D)),
                  ),
                ),
                Align(
                  alignment: Alignment.center, // Căn giữa theo trục ngang
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.95,
                    margin: EdgeInsets.only(top: 8),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Địa chỉ lắp đặt',
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
                      ),
                      keyboardType: TextInputType.text,
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text(
                        "Quận (huyện)",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF625D5D)),
                      ),
                    ),
                    Align(
                      alignment:
                      Alignment.center, // Căn giữa theo trục ngang
                      child: Container(
                        padding: EdgeInsets.only(top: 8),
                        width: MediaQuery.of(context).size.width * 0.45,
                        child: DropdownButtonFormField<String>(
                          hint: const Text("Quận/ huyện"),
                          value: selectedValue,
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 12, vertical: 8),
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
                          ),
                          items: districts
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
                      alignment:
                      Alignment.center, // Căn giữa theo trục ngang
                      child: Container(
                        padding: EdgeInsets.only(top: 8),
                        width: MediaQuery.of(context).size.width * 0.45,
                        child: DropdownButtonFormField<String>(
                          hint: const Text("Phường/ xã"),
                          value: selectedValue,
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 12, vertical: 8),
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
                          ),
                          items: Xa.asMap()
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16, top: 16),
                  child: Text(
                    "Địa chỉ liên hệ",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF625D5D)),
                  ),
                ),
                Align(
                  alignment: Alignment.center, // Căn giữa theo trục ngang
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.95,
                    margin: EdgeInsets.only(top: 8),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Vui lòng nhập địa chỉ liên hệ',
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
                      ),
                      keyboardType: TextInputType.text,
                    ),
                  ),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16, top: 16),
                  child: Text(
                    "Địa chỉ email",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF625D5D)),
                  ),
                ),
                Align(
                  alignment: Alignment.center, // Căn giữa theo trục ngang
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.95,
                    margin: EdgeInsets.only(top: 8),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Địa chỉ email',
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
                      ),
                      keyboardType: TextInputType.text,
                    ),
                  ),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16, top: 16),
                  child: Text(
                    "Số điện thoại",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF625D5D)),
                  ),
                ),
                Align(
                  alignment: Alignment.center, // Căn giữa theo trục ngang
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.95,
                    margin: EdgeInsets.only(top: 8),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Số điện thoại',
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
                      ),
                      keyboardType: TextInputType.text,
                    ),
                  ),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16, top: 16),
                  child: Text(
                    "Đối tượng/ Mục đích sử dụng",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF625D5D)),
                  ),
                ),
                Align(
                  alignment: Alignment.center, // Căn giữa theo trục ngang
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.95,
                    margin: EdgeInsets.only(top: 8),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Mục đích sử dụng',
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
                      ),
                      keyboardType: TextInputType.text,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.95,
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Hình ảnh',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF625D5D)),
                      ),
                      Text(' (tối đa 3 ảnh)',
                          style: TextStyle(
                            fontSize: 15,
                          )),
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                          _pickImages();
                        },
                        child: Row(
                          children: [
                            Icon(
                              Icons.camera_alt_outlined,
                              // Biểu tượng khóa mặc định
                              color: Color(0xFF0062B6),
                              // Màu của biểu tượng có thể thay đổi
                              size: 16, // Kích thước biểu tượng
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Tải ảnh lên',
                              style: TextStyle(
                                  fontSize: 15, color: Color(0xFF0062B6)),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    // Căn giữa theo trục ngang
                    child: Text(
                      '(Hướng dẫn Thủ tục đăng ký gắn mới >>>)',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF00B2F5),
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    // Căn giữa theo trục ngang
                    child: Text(
                      'Vui lòng chọn hình ảnh mặt đồng hồ nước',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFFA3A3A3),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  _images.isNotEmpty
                      ? Wrap(
                    spacing: 32.0, // Khoảng cách giữa các ảnh
                    children: _images.map((image) {
                      return Container(
                        width: 100, // Kích thước ảnh nhỏ
                        height: 100, // Kích thước ảnh nhỏ
                        child: Image.file(
                          image,
                          fit: BoxFit
                              .cover, // Cắt ảnh để vừa với container
                        ),
                      );
                    }).toList(),
                  )
                      : Text('Chưa chọn ảnh'),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.3,
                    height: 42,
                    margin: EdgeInsets.only(top: 24),
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
                        setState(() {
                          // if(_nameController.text.isEmpty){
                          //   _nameError = true;
                          // }else{
                          //   _nameError = false;
                          // }
                          // if(_phoneController.text.isEmpty || !_isValidPhone(_phoneController.text)){
                          //   _nameError1 = true;
                          // }else{
                          //   _nameError1 = false;
                          // }
                        });
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
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    ));
  }
}

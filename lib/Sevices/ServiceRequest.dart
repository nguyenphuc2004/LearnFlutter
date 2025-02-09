import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:te/appbar/AppBarCommon.dart';


class ServiceRequest extends StatefulWidget {
  @override
  ServiceRequestState createState() => ServiceRequestState();
}

class ServiceRequestState extends State<ServiceRequest> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  bool _isValidPhone(String sdt) {
    RegExp emailRegExp = RegExp(r"^(09\d{8}|03\d{8}|08\d{8}|\+84\d{9})$");
    return emailRegExp.hasMatch(sdt);
  }
  String? selectedValue, selectedValue2;
  bool? _nameError,_nameError1;

  List<File> _images = [];
  Future<void> _pickImages() async {
    // Kiểm tra xem số lượng ảnh đã chọn có lớn hơn hoặc bằng 3 chưa
    if (_images.length >= 3) {
      // Nếu đã chọn đủ 3 ảnh, hiển thị thông báo và không cho phép chọn thêm
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Đã chọn đủ 3 ảnh!')),  // Thông báo cho người dùng
      );
      return;  // Dừng hàm nếu đã đạt giới hạn ảnh
    }

    final picker = ImagePicker();  // Khởi tạo ImagePicker để chọn ảnh
    final pickedFiles = await picker.pickMultiImage();  // Mở thư viện ảnh và chọn nhiều ảnh

    if (pickedFiles != null) {  // Nếu người dùng chọn ít nhất một ảnh
      setState(() {  // Cập nhật lại UI
        // Thêm các ảnh đã chọn vào danh sách _images, nhưng chỉ thêm khi số lượng chưa đạt 3
        _images.addAll(
          pickedFiles.take(3 - _images.length)  // Lấy tối đa số ảnh cần thêm để đạt 3 ảnh
              .map((pickedFile) => File(pickedFile.path))  // Chuyển mỗi ảnh thành đối tượng File
              .toList(),  // Chuyển thành List<File> để thêm vào danh sách
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
        automaticallyImplyLeading: false,
        title: AppBarCustom(
          title: "Yêu cầu dịch vụ",
          hasBackButton: true,
        ),
      ),
      body: SingleChildScrollView(child:  Column(
        // Căn các phần tử con về bên trái
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 16, top: 32),
                child: Text(
                  "Loại",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF625D5D)),
                ),
              ),
              Align(
                alignment: Alignment.center, // Căn giữa theo trục ngang
                child: Container(
                  padding: EdgeInsets.only(top: 8),
                  width: MediaQuery.of(context).size.width *
                      0.95, // Chiều rộng 95% màn hình
                  child: DropdownButtonFormField<String>(
                    hint: const Text("Loại"),
                    value: selectedValue,
                    decoration: const InputDecoration(
                      contentPadding:
                      EdgeInsets.symmetric(horizontal: 12, vertical: 8),
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
                    items: [
                      DropdownMenuItem(
                        value: 'Loại 1',
                        child: Row(
                          children: const [
                            Text('Loại 1'),
                          ],
                        ),
                      ),
                      DropdownMenuItem(
                        value: 'Loại 2',
                        child: Row(
                          children: const [
                            Text('Loại 2'),
                          ],
                        ),
                      ),
                      DropdownMenuItem(
                        value: 'Loại 3',
                        child: Row(
                          children: const [
                            Text('Loại 3'),
                          ],
                        ),
                      ),
                      DropdownMenuItem(
                        value: 'Loại 4',
                        child: Row(
                          children: const [
                            Text('Loại 4'),
                          ],
                        ),
                      ),
                    ],
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedValue = newValue;
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 16, top: 8),
                child: Text(
                  "Người đăng ký",
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
                    controller: _nameController,
                    decoration: InputDecoration(
                      hintText: 'Người đăng ký',
                      hintStyle: const TextStyle(
                          color: Color(0xFF888888), fontSize: 15),
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
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 16,
                      ),
                    ),
                    keyboardType: TextInputType.text,
                  ),
                ),
              ),
              if (_nameError == true)
                Padding(
                  padding: const EdgeInsets.only(top: 8,left: 16),
                  child: Row(
                    children: [
                      Icon(Icons.info, size: 15, color: Colors.red),
                      SizedBox(width: 5),
                      const Text(
                        'Vui lòng điền vào họ và tên',
                        style: TextStyle(color: Colors.red, fontSize: 12),
                      ),
                    ],
                  ),
                ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 16, top: 8),
                child: Text(
                  "Mã bộ danh",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF625D5D)),
                ),
              ),
              Align(
                alignment: Alignment.center, // Căn giữa theo trục ngang
                child: Container(
                  padding: EdgeInsets.only(top: 8),
                  width: MediaQuery.of(context).size.width *
                      0.95, // Chiều rộng 95% màn hình
                  child: DropdownButtonFormField<String>(
                    hint: const Text("20026338620"),
                    value: selectedValue,
                    decoration: const InputDecoration(
                      contentPadding:
                      EdgeInsets.symmetric(horizontal: 12, vertical: 8),
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
                alignment: Alignment.center, // Căn giữa theo trục ngang
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.95,
                  margin: EdgeInsets.only(top: 8),
                  child: TextField(
                    controller: _phoneController,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(10),  // Giới hạn tối đa 10 ký tự
                    ],
                    decoration: InputDecoration(
                      hintText: 'Số điện thoại',
                      hintStyle: const TextStyle(
                          color: Color(0xFF888888), fontSize: 15),
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
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 16,
                      ),
                    ),
                    keyboardType: TextInputType.phone,

                  ),
                ),
              ),
              if (_nameError1 == true)
                Padding(
                  padding: const EdgeInsets.only(top: 8,left: 16),
                  child: Row(
                    children: [
                      Icon(Icons.info, size: 15, color: Colors.red),
                      SizedBox(width: 5),
                      const Text(
                        'Vui lòng điền vào số điện thoại',
                        style: TextStyle(color: Colors.red, fontSize: 12),
                      ),
                    ],
                  ),
                ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 16, top: 8),
                child: Text(
                  "Nội dung",
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
                      hintText: 'Nội dung',
                      hintStyle: const TextStyle(
                          color: Color(0xFF888888), fontSize: 15),
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
                      onTap: (){
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
                  alignment: Alignment.topLeft, // Căn giữa theo trục ngang
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
                  alignment: Alignment.topLeft, // Căn giữa theo trục ngang
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
                  spacing: 32.0,  // Khoảng cách giữa các ảnh
                  children: _images.map((image) {
                    return Container(
                      width: 100,  // Kích thước ảnh nhỏ
                      height: 100,  // Kích thước ảnh nhỏ
                      child: Image.file(
                        image,
                        fit: BoxFit.cover,  // Cắt ảnh để vừa với container
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
                        if(_nameController.text.isEmpty){
                          _nameError = true;
                        }else{
                          _nameError = false;
                        }
                        if(_phoneController.text.isEmpty || !_isValidPhone(_phoneController.text)){
                          _nameError1 = true;
                        }else{
                          _nameError1 = false;
                        }
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
            height: 32,
          ),
        ],
      ),)
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ImageUploadPage extends StatefulWidget {
  @override
  _ImageUploadPageState createState() => _ImageUploadPageState();
}

class _ImageUploadPageState extends State<ImageUploadPage> {
  List<File> _images = [];  // Biến lưu trữ danh sách ảnh đã chọn

  // Hàm chọn ảnh từ thư viện
  Future<void> _pickImages() async {
    if (_images.length >= 3) {
      // Nếu đã chọn đủ 3 ảnh, không cho phép chọn thêm
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Đã chọn đủ 3 ảnh!')),
      );
      return;
    }

    final picker = ImagePicker();
    final pickedFiles = await picker.pickMultiImage();  // Chọn nhiều ảnh từ thư viện

    if (pickedFiles != null) {
      setState(() {
        // Chỉ thêm ảnh nếu số lượng ảnh chọn được chưa đạt 3
        _images.addAll(
          pickedFiles.take(3 - _images.length).map((pickedFile) => File(pickedFile.path)).toList(),
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tải ảnh lên'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            GestureDetector(
              onTap: _pickImages,  // Khi nhấn vào sẽ gọi hàm _pickImages để chọn nhiều ảnh
              child: Row(
                children: [
                  Icon(
                    Icons.camera_alt_outlined,
                    color: Color(0xFF0062B6),  // Màu của biểu tượng
                    size: 16,  // Kích thước biểu tượng
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Tải ảnh lên',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFF0062B6),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            // Hiển thị ảnh nếu đã chọn
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
                : Text('Chưa chọn ảnh'),  // Nếu chưa chọn ảnh, hiển thị thông báo
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ImageUploadPage(),  // Mở trang ImageUploadPage
  ));
}

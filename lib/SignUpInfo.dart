import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Notification/NotificationFaceid.dart';

class SignUpInfo extends StatefulWidget {
  @override
  SignUpInfoState createState() => SignUpInfoState();
}

class SignUpInfoState extends State<SignUpInfo> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  bool? _nameError, _nameError1;

  // Biểu thức chính quy kiểm tra họ và tên không có dấu, ký tự đặc biệt, hoặc khoảng trắng dư thừa
  bool _isValidName(String name) {
    // Chỉ cho phép ký tự alphabet không dấu, không cho phép ký tự đặc biệt hoặc khoảng trắng dư thừa
    RegExp nameRegExp = RegExp(r'^[a-zA-Z\s]+$');
    return nameRegExp.hasMatch(name.trim()) && !name.contains(RegExp(r'\s{2,}'));
  }

  // Biểu thức chính quy kiểm tra địa chỉ email hợp lệ
  bool _isValidEmail(String email) {
    RegExp emailRegExp = RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
    return emailRegExp.hasMatch(email);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 160, left: 136),
                  child: Image.asset(
                    'assets/images/Group 2004.png',
                  ),
                ),
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(top: 62, left: 57),
                  child: Text(
                    'Đăng ký',
                    style: TextStyle(
                        fontSize: 24,
                        color: Color(0xFF0062B6),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(top: 0, left: 57),
                  child: Text(
                    'Vui lòng nhập thông tin để đăng ký tài khoản',
                    style: TextStyle(fontSize: 14, color: Color(0xFF0062B6)),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 16, left: 57),
                  child: SizedBox(
                    width: 310,
                    height: 43,
                    child: TextField(
                      controller: _nameController,
                      decoration: InputDecoration(
                        hintText: 'Họ và tên',
                        hintStyle: const TextStyle(color: Color(0xFF0062B6), fontSize: 15),
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF0062B6)),
                            borderRadius: BorderRadius.all(Radius.circular(12))),
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF0062B6)),
                            borderRadius: BorderRadius.all(Radius.circular(12))),
                        contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(10),
                          child: SvgPicture.asset(
                            'assets/images/Group 2205.svg',
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              if (_nameError == true)
                Padding(
                  padding: const EdgeInsets.only(top: 8, left: 60),
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
              if (_nameError1 == true)
                Padding(
                  padding: const EdgeInsets.only(top: 8, left: 60),
                  child: Row(
                    children: [
                      Icon(Icons.info, size: 15, color: Colors.red),
                      SizedBox(width: 5),
                      const Text(
                        'Vui lòng không điền ký tự đặt biệt!',
                        style: TextStyle(color: Colors.red, fontSize: 12),
                      ),
                    ],
                  ),
                ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 8, left: 57),
                  child: SizedBox(
                    width: 310,
                    height: 43,
                    child: TextField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        hintText: 'Địa chỉ email (nếu có)',
                        hintStyle: const TextStyle(color: Color(0xFF0062B6), fontSize: 15),
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF0062B6)),
                            borderRadius: BorderRadius.all(Radius.circular(12))),
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF0062B6)),
                            borderRadius: BorderRadius.all(Radius.circular(12))),
                        contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(10),
                          child: SvgPicture.asset(
                            'assets/images/Group 2358.svg',
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 24, left: 59),
                  child: Container(
                    width: 310,
                    height: 44,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Color(0xFF003191), Color(0xFF00AEEF)],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                      borderRadius: BorderRadius.circular(12), // Bo góc
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (_nameController.text.isEmpty) {
                            _nameError = true;
                            _nameError1 = false;
                          } else if (!_isValidName(_nameController.text)) {
                            _nameError1 = true;
                            _nameError = false;
                          } else {
                            _nameError = false;
                            _nameError1 = false;
                            showDialog(
                              context: context,
                              barrierDismissible: false,
                              builder: (BuildContext context) => FaceIdActivate(),
                            );
                          }
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: const Text(
                        "Đăng ký",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

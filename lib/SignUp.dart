import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:te/Clause.dart';
import 'package:te/GeneralUse/ButtonCommon.dart';
import 'package:te/SignIn.dart';

class SignUp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SignUpState();
}

class SignUpState extends State<SignUp> {
  final TextEditingController _nameController = TextEditingController();
  bool? _nameError;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                'assets/images/pexels-rednguyen-12636958 1.png',
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 67,
              left: 31,
              child: Image.asset(
                'assets/images/Rectangle.png',
                width: 66,
                height: 62,
              ),
            ),
            const Positioned(
              top: 135,
              left: 31,
              child: Text(
                'Chào buổi sáng',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset(
                'assets/images/pexels-rednguyen-12636958 2.png',
              ),
            ),
            Container(
              padding: EdgeInsets.all(48),
              alignment: Alignment(0, 0.9),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Đăng ký",
                    style: TextStyle(
                      color: Color(0xFF0062B6),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Nhập số điện thoại để đăng ký và sử dụng dịch vụ.",
                    style: TextStyle(
                      color: Color(0xFF0062B6),
                      fontSize: 13,
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: 310,
                    height: 44,
                    child: TextField(
                      controller: _nameController,
                      decoration: InputDecoration(
                        hintText: 'Vui lòng nhập số điện thoại',
                        hintStyle: const TextStyle(
                            color: Color(0xFF0062B6), fontSize: 15),
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF0062B6)),
                          // Viền khi không focus
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF0062B6)),
                          // Viền khi focus
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 8,
                          horizontal: 16,
                        ),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(10),
                          // Điều chỉnh khoảng cách của icon
                          child: SvgPicture.asset(
                            'assets/images/Group 2200.svg',
                          ),
                        ),
                      ),
                      keyboardType: TextInputType.phone,
                    ),
                  ),
                  if (_nameError == true)
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
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
                  SizedBox(height: 15),
                  Buttoncommon(
                    text: "Đăng ký bằng OTP",
                    onPressed: (){
                      setState(() {
                        String phoneNumber = _nameController.text;
                        // Biểu thức chính quy kiểm tra số điện thoại
                        RegExp phoneRegExp = RegExp(
                            r'^0[0-9]{9}$'); // Số điện thoại bắt đầu bằng 0 và có 10 chữ số
                        if (phoneNumber.isEmpty ||
                            !phoneRegExp.hasMatch(phoneNumber)) {
                          _nameError = true; // Đặt lỗi nếu không hợp lệ
                        } else {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Clause()),
                          );
                        }
                      });
                    },
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(32, 0, 0, 0),
                    child: Row(
                      children: [
                        const Text(
                          "Nếu đã có tài khoản rồi ",
                          style: TextStyle(
                            color: Color(0xFF0062B6),
                            fontSize: 12,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SignIn()),
                            );
                          },
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          child: const Text(
                            "Đăng nhập",
                            style: TextStyle(
                              color: Color(0xFF0062B6),
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const Text(
                          " tại đây.",
                          style: TextStyle(
                            color: Color(0xFF0062B6),
                            fontSize: 14,
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
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned.fill(
              bottom: 60,
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
                style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            Positioned.fill(
              top: 500,
              child: Image.asset(
                'assets/images/pexels-rednguyen-12636958 2.png',
                fit: BoxFit.fill,
              ),
            ),
            Container(
              padding: EdgeInsets.all(50),
              alignment: Alignment(0, 0.9),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Đăng ký",
                    style: TextStyle(
                      color: Color(0xFF0062B6),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    "Nhập số điện thoại để đăng ký và sử dụng dịch vụ.",
                    style: TextStyle(
                      color: Color(0xFF0062B6),
                      fontSize: 13,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: 310,
                    height: 44,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Vui lòng nhập số điện thoại',
                        hintStyle: const TextStyle(color: Color(0xFF0062B6), fontSize: 15),
                        filled: true,
                        fillColor: Colors.white,
                        border: const OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF0062B6), width: 2),
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 20,
                        ),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(10), // Điều chỉnh khoảng cách của icon
                          child: SvgPicture.asset(
                            'assets/images/Group 2200.svg',
                          ),
                        ),
                      ),
                      keyboardType: TextInputType.phone,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    width: 310,
                    height: 44,
                    child: ElevatedButton(
                      onPressed: () {
                        print("Button pressed");
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF0062B6),
                        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 60),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: const Text(
                        "Đăng ký bằng OTP",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
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
                            Navigator.pop(context);
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

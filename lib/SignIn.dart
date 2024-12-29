import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:te/SignUp.dart';
import 'Clause.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
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
                fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Image.asset(
            'assets/images/pexels-rednguyen-12636958 2.png',
          ),
        ),
        Container(
          padding: EdgeInsets.all(45),
          alignment: Alignment(0, 0.9),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Đăng nhập",
                style: TextStyle(
                  color: Color(0xFF0062B6),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "Nhập số điện thoại để đăng nhập và sử dụng dịch vụ.",
                style: TextStyle(
                  color: Color(0xFF0062B6),
                  fontSize: 13,
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 310,
                height: 44,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Nhập số điện thoại',
                    hintStyle:
                        const TextStyle(color: Color(0xFF0062B6), fontSize: 15),
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
                      padding: const EdgeInsets.all(8),
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
                    print("Button pressed");
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent, // Nền trong suốt
                    shadowColor: Colors.transparent, // Không bóng

                  ),
                  child: const Text(
                    "Đăng nhập",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(65, 0, 0, 0),
                child: Row(
                  children: [
                    const Text(
                      "Chưa có tài khoản? ",
                      style: TextStyle(
                        color: Color(0xFF0062B6),
                        fontSize: 12,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Clause()),
                        );
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: const Text(
                        "Đăng ký",
                        style: TextStyle(
                          color: Color(0xFF0062B6),
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    )));
  }
}

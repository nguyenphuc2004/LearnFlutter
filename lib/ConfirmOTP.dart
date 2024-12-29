import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pinput/pinput.dart';

class ConfirmOTP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70),
          child: AppBar(
            automaticallyImplyLeading: false,
            title: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Align(
                    alignment: Alignment.topLeft,
                    // Can adjust to desired position
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8, left: 8),
                      child: SvgPicture.asset(
                        'assets/images/Group 1833.svg',
                        width: 43,
                        height: 43,
                      ),
                    ),
                  ),
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 8, left: 10),
                    // Thêm khoảng cách cho Text
                    child: Text(
                      'Xác thực mã OTP',
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xff004F92),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          )),
      body: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
                padding: const EdgeInsets.only(top: 101, left: 137),
                // Thêm khoảng cách cho Text
                child: Image.asset(
                  'assets/images/Group 2004.png',
                )),
          ),
          const Align(
            alignment: Alignment.topLeft,
            child: Padding(
                padding: EdgeInsets.only(top: 35, left: 30, right: 25),
                // Thêm khoảng cách cho Text
                child: Text(
                  'Chúng tôi vừa gửi tới điện thoại của bạn '
                  'một mã xác thực OTP gồm 6 chữ số. Vui lòng '
                  'kiểm tra tin nhắn điện thoại và nhập mã vào ô bên dưới.',
                  style: TextStyle(fontSize: 14, color: Color(0xFF0062B6)),
                )),
          ),
          const SizedBox(height: 25),
          Pinput(
            length: 6,
            defaultPinTheme: PinTheme(
              width: 50,
              height: 50,
              textStyle: const TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Color(0xFF0062B6)),
              ),
            ),
            obscureText: true, // Ẩn ký tự như nhập mật khẩu
            // Khoảng cách giữa các ô
            validator: (value) {
              if (value == '123456') {
                return 'Mã PIN chính xác';
              } else {
                return 'Mã PIN không hợp lệ';
              }
            },
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
                padding: const EdgeInsets.only(top: 20, left: 100),
                // Thêm khoảng cách cho Text
                child: Row(
                  children: [
                    const Text(
                      'Xác thực thông qua',
                      style: TextStyle(fontSize: 14, color: Color(0xFF0062B6)),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Cuộc gọi lại',
                          style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF0062B6),
                              fontWeight: FontWeight.bold),
                        ))
                  ],
                )),
          ),
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
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent, // Nền trong suốt
                shadowColor: Colors.transparent, // Không bóng
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text(
                'Xác thực OTP',
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
                padding: const EdgeInsets.only(top: 8, left: 70),
                // Thêm khoảng cách cho Text
                child: Row(
                  children: [
                    const Text(
                      'Mã OTP có hiệu lực trong 60 giây',
                      style: TextStyle(fontSize: 14, color: Color(0xFF0062B6)),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Gửi lại',
                          style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF0062B6),
                              fontWeight: FontWeight.bold),
                        ))
                  ],
                )),
          ),
        ],
      ),
    ));
  }
}

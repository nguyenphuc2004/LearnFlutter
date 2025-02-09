import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pinput/pinput.dart';
import 'package:te/SignUpInfo.dart';

class ConfirmOTP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
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
                    child: Text(
                      'Xác thực mã OTP',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xff004F92),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 101, left: 125),
                    child: Image.asset('assets/images/Group 2004.png'),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 35),
                  child: Text(
                    'Chúng tôi vừa gửi tới điện thoại của bạn '
                        'một mã xác thực OTP gồm 6 chữ số. Vui lòng '
                        'kiểm tra tin nhắn điện thoại và nhập mã vào ô bên dưới.',
                    style: TextStyle(fontSize: 14, color: Color(0xFF0062B6)),
                  ),
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
                  validator: (value) {
                    if (value == '123456') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpInfo()),
                      );
                    } else {
                      return 'Mã PIN không hợp lệ';
                    }
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
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
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 310,
                  height: 44,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Color(0xFF003191), Color(0xFF00AEEF)],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
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
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
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
        ),
      ),
    );
  }
}

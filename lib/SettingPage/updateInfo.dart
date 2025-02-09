import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:te/appbar/AppBarCommon.dart';

class updateInfo extends StatefulWidget {
  updateInfoState createState() => updateInfoState();
}

class updateInfoState extends State<updateInfo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: AppBarCustom(title: "Cập nhật thông tin", hasBackButton: true),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.94,
                margin: EdgeInsets.only(top: 40),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Họ và tên',
                    hintStyle:
                        const TextStyle(color: Color(0xFF888888), fontSize: 15),
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
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(8),
                      child: SvgPicture.asset(
                        'assets/images/Group 1831.svg',
                      ),
                    ),
                  ),
                  keyboardType: TextInputType.text,
                ),
              ),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.94,
            margin: EdgeInsets.only(top: 16),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Mật khẩu đăng nhập',
                hintStyle:
                    const TextStyle(color: Color(0xFF888888), fontSize: 15),
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
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Icon(
                    Icons.lock_open_rounded, // Biểu tượng khóa mặc định
                    color: Color(0xFF888888),
                    // Màu của biểu tượng có thể thay đổi
                    size: 32, // Kích thước biểu tượng
                  ),
                ),
              ),
              keyboardType: TextInputType.text,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.94,
            margin: EdgeInsets.only(top: 16),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Xác nhận mật khẩu',
                hintStyle:
                    const TextStyle(color: Color(0xFF888888), fontSize: 15),
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
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Icon(
                    Icons.lock_open_rounded, // Biểu tượng khóa mặc định
                    color: Color(0xFF888888),
                    // Màu của biểu tượng có thể thay đổi
                    size: 32, // Kích thước biểu tượng
                  ),
                ),
              ),
              keyboardType: TextInputType.text,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.94,
            margin: EdgeInsets.only(top: 16),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Địa chỉ email',
                hintStyle:
                    const TextStyle(color: Color(0xFF888888), fontSize: 15),
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
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(8),
                  child: SvgPicture.asset(
                    'assets/images/Vector13.svg',
                    width: 1,
                    height: 1,
                  ),
                ),
              ),
              keyboardType: TextInputType.text,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.6,
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
                setState(() {});
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                // Nền trong suốt
                shadowColor: Colors.transparent, // Không bóng
              ),
              child: const Text(
                "Lưu",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

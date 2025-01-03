import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FaceIdActivate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 292,
        height: 159,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20), // Thêm padding xung quanh
              child: Text(
                "Kích hoạt nhận diện FaceID",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF0062B6),
                    decoration: TextDecoration.none
                ),
              ),
            ),
            SizedBox(height: 5),
            Container(
              width: 270, // Đặt chiều dài chính xác cho Divider
              child: Divider(
                color: Colors.grey,
                thickness: 0.5,
              ),
            ),

            Text(
              "Quý khách có muốn kích hoạt để đăng nhập sau này không?",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                  decoration: TextDecoration.none),
            ),
            SizedBox(height: 5),
            Container(
              width: 270, // Đặt chiều dài chính xác cho Divider
              child: Divider(
                color: Colors.grey,
                thickness: 0.5,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text(
                    "KHÔNG DÙNG",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFFF6262)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: SizedBox(
                    height: 32, // Chiều cao của gạch dọc
                    child: VerticalDivider(
                      color: Colors.grey,
                      thickness: 0.5,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      barrierDismissible: false,
                      // Không thể đóng khi nhấn ngoài
                      builder: (BuildContext context) => FaceIdSuccess(),
                    );
                  },
                  child: Text("KÍCH HOẠT",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF0062B6))),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class FaceIdSuccess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 384,
        height: 238,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: SvgPicture.asset(
                'assets/images/Vector.svg',
                width: 67,
                height: 67,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20), // Thêm padding xung quanh
              child: Text(
                "Kích hoạt FaceID thành công",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF0062B6),
                    decoration: TextDecoration.none
                ),
              ),
            ),
            SizedBox(height: 5),
            Divider(
              color: Colors.grey,
              thickness: 0.5,
              indent: 20,
              endIndent: 20,
            ),
            Text(
              "Bây giờ bạn đã có thể đăng nhập vào tài \nkhoản bằng FaceID",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                  decoration: TextDecoration.none),
            ),
            Divider(
              color: Colors.grey,
              thickness: 0.5,
              indent: 20,
              endIndent: 20,
            ),
            TextButton(
              onPressed: () {
                // Quay lại trang chủ chứ không quay lại trang trước đó
                Navigator.of(context).popUntil((route) => route.isFirst);
              },
              child: Text("ĐÓNG",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFFF6262))),
            ),
          ],
        ),
      ),
    );
  }
}

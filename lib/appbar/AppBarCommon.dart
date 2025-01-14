import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarCustom extends StatelessWidget {
  final String title; // Thêm tham số title
  final bool hasBackButton; // Thêm tham số kiểm soát GestureDetector
  const AppBarCustom({
    Key? key,
    required this.title,
    this.hasBackButton = false, // Mặc định có nút back
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (hasBackButton)
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
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: EdgeInsets.only(top: 8, left: 8),
            child: Text(
              title, // Sử dụng title thay cho 'Dịch vụ'
              style: TextStyle(
                fontSize: 20,
                color: Color(0xff0062B6),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Spacer(),
        Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: EdgeInsets.only(top: 8),
            child: SvgPicture.asset('assets/images/Vector1.svg'),
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: EdgeInsets.only(top: 8, left: 24),
            child: SvgPicture.asset('assets/images/26. Notification.svg'),
          ),
        ),
      ],
    );
  }
}

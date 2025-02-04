import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

class Appbartulam extends StatelessWidget {
  final String title;


  Appbartulam(this.title);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Align(
        alignment: Alignment.topCenter,
        child: Image.asset(
          'assets/images/xiamen-china-skyline-2023-11-27-05-12-58-utc 2.png',
        ),
      ),

      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        // Căn các phần tử về bên phải
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(top: 32,left: 16),
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
              padding: EdgeInsets.only(top: 40, left: 16),
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
              padding: EdgeInsets.only(top: 40, right: 25),
              child: SvgPicture.asset('assets/images/Vector1.svg'),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.only(top: 40, right: 25),
              child: SvgPicture.asset('assets/images/26. Notification.svg'),
            ),
          )
        ],
      ),
    ],);
  }
}

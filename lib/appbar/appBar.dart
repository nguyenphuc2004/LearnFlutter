import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class appBar extends StatelessWidget {
  const appBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            // Navigator.pop(context);
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
              padding: EdgeInsets.only(top: 8, left: 18),
              child: Text(
                'Dịch vụ',
                style: TextStyle(
                    fontSize: 20,
                    color: Color(0xff0062B6),
                    fontWeight: FontWeight.bold),
              )),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: const EdgeInsets.only(top: 8, left: 180),
            child: SvgPicture.asset('assets/images/Vector1.svg'),
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: const EdgeInsets.only(top: 8, left: 20),
            child: SvgPicture.asset('assets/images/26. Notification.svg'),
          ),
        )
      ],
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:te/appbar/AppBarCommon.dart';

class CommentListDetails extends StatefulWidget {
  const CommentListDetails({super.key});

  @override
  State<CommentListDetails> createState() => _CommentListDetailsState();
}

class _CommentListDetailsState extends State<CommentListDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: AppBarCustom(
          title: "Danh Sách góp ý",
          hasBackButton: true,
        ),
      ),
      body: Column(
        children: [
          Align(
            alignment: Alignment.topCenter, // Căn giữa theo trục ngang
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              margin: EdgeInsets.only(top: 30),
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(
                  color: Color(0xFFF6F7F9),
                  borderRadius: BorderRadius.circular(16)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Góp ý ứng dụng',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text('10/01/2022 - 20:20:00',
                      style: TextStyle(fontSize: 11, color: Color(0xFF30ADE0))),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sed nisi lacus sed viverra. Morbi tempus iaculis urna id volutpat. Amet dictum sit amet justo donec enim diam. Dolor sed viverra ipsum nunc aliquet. Nec tincidunt praesent semper feugiat nibh. Quis commodo odio aenean sed adipiscing diam donec adipiscing tristique. Massa enim nec dui nunc. Eu ultrices vitae auctor eu augue.',
                    style: TextStyle(
                      fontSize: 11,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: EdgeInsets.only(left: 40, top: 20),
                child: Text(
                  'Phản hồi',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              )),
          Align(
            alignment: Alignment.topCenter, // Căn giữa theo trục ngang
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(
                  color: Color(0xFFF6F7F9),
                  borderRadius: BorderRadius.circular(16)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset('assets/images/Vector18.svg'),
                      SizedBox(width: 10),
                      Text(
                        'Lê Thiện - Kỹ thuật viên',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Text(
                    'Do tình hình dịch bệnh Covid-19 vẫn đang diễn ra phức tạp, hiện nay công tác đọc ghi số đồng hồ nước tại nhà khách hàng...',
                    style: TextStyle(
                      fontSize: 11,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('10 phút trước',
                      style: TextStyle(fontSize: 11, color: Color(0xFF30ADE0))),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            width: 162,
            height: 42,
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
                setState(() {

                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                // Nền trong suốt
                shadowColor: Colors.transparent, // Không bóng
              ),
              child: const Text(
                "Trả lời",
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

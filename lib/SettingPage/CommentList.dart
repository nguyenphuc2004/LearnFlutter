import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:te/SettingPage/CommentListDetails.dart';
import 'package:te/SettingPage/ContributeComment.dart';
import 'package:te/appbar/AppBarCommon.dart';

class Commentlist extends StatefulWidget {
  const Commentlist({super.key});

  @override
  State<Commentlist> createState() => _CommentlistState();
}

class _CommentlistState extends State<Commentlist> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: AppBarCustom(
          title: 'Danh sách góp ý',
          hasBackButton: true,
        ),
      ),
      body: Column(
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              width: 310,
              height: 44,
              margin: EdgeInsets.only(top: 40),
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ContributeComment()),
                    );
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  // Nền trong suốt
                  shadowColor: Colors.transparent, // Không bóng
                ),
                child: const Text(
                  "Đóng góp ý kiến",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 16),
          Expanded(
              child: Padding(
            padding: EdgeInsets.all(8),
            child: ListView(
              children: [
                // Các phần tử khác
                ListTile(
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Góp ý ứng dụng',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Do tình hình dịch bệnh Covid-19 vẫn đang diễn ra phức tạp, hiện nay công tác đọc ghi số đồng hồ nước tại nhà khách hàng...',
                        style: TextStyle(
                          fontSize: 11,
                        ),
                      ),
                      Text('10/01/2022 - 20:20:00',
                          style: TextStyle(
                              fontSize: 11, color: Color(0xFF30ADE0))),
                    ],
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CommentListDetails()));
                  },
                ),
                Divider(
                  height: 1,
                  thickness: 1,
                  color: Colors.grey[300],
                  indent: 15,
                  endIndent: 15,
                ),
                ListTile(
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Góp ý ứng dụng',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Do tình hình dịch bệnh Covid-19 vẫn đang diễn ra phức tạp, hiện nay công tác đọc ghi số đồng hồ nước tại nhà khách hàng...',
                        style: TextStyle(
                          fontSize: 11,
                        ),
                      ),
                      Text('10/01/2022 - 20:20:00',
                          style: TextStyle(
                              fontSize: 11, color: Color(0xFF30ADE0))),
                    ],
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CommentListDetails()));
                  },
                ),
                Divider(
                  height: 1,
                  thickness: 1,
                  color: Colors.grey[300],
                  indent: 15,
                  endIndent: 15,
                ),
                ListTile(
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Góp ý ứng dụng',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Do tình hình dịch bệnh Covid-19 vẫn đang diễn ra phức tạp, hiện nay công tác đọc ghi số đồng hồ nước tại nhà khách hàng...',
                        style: TextStyle(
                          fontSize: 11,
                        ),
                      ),
                      Text('10/01/2022 - 20:20:00',
                          style: TextStyle(
                              fontSize: 11, color: Color(0xFF30ADE0))),
                    ],
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CommentListDetails()));
                  },
                ),
                Divider(
                  height: 1,
                  thickness: 1,
                  color: Colors.grey[300],
                  indent: 15,
                  endIndent: 15,
                ),
                ListTile(
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Góp ý ứng dụng',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Do tình hình dịch bệnh Covid-19 vẫn đang diễn ra phức tạp, hiện nay công tác đọc ghi số đồng hồ nước tại nhà khách hàng...',
                        style: TextStyle(
                          fontSize: 11,
                        ),
                      ),
                      Text('10/01/2022 - 20:20:00',
                          style: TextStyle(
                              fontSize: 11, color: Color(0xFF30ADE0))),
                    ],
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CommentListDetails()));
                  },
                ),
                Divider(
                  height: 1,
                  thickness: 1,
                  color: Colors.grey[300],
                  indent: 15,
                  endIndent: 15,
                ),
                ListTile(
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Góp ý ứng dụng',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Do tình hình dịch bệnh Covid-19 vẫn đang diễn ra phức tạp, hiện nay công tác đọc ghi số đồng hồ nước tại nhà khách hàng...',
                        style: TextStyle(
                          fontSize: 11,
                        ),
                      ),
                      Text('10/01/2022 - 20:20:00',
                          style: TextStyle(
                              fontSize: 11, color: Color(0xFF30ADE0))),
                    ],
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CommentListDetails()));
                  },
                ),
              ],
            ),
          ))
        ],
      ),
    ));
  }
}

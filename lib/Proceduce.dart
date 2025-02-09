import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:te/ProceduceDetails.dart';
import 'package:te/appbar/AppBarCommon.dart';

class Proceduce extends StatefulWidget {
  const Proceduce({super.key});

  @override
  State<Proceduce> createState() => _ProceduceState();
}

class _ProceduceState extends State<Proceduce> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        automaticallyImplyLeading: false,
        title: AppBarCustom(
          title: "Thủ tục - Văn bằng pháp luật",
          hasBackButton: true,
        ),
      ),
          body: Container(
              width: MediaQuery.of(context).size.width * 0.95,
              margin: EdgeInsets.only(top: 40),
              child: Padding(
                padding: EdgeInsets.all(8),
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    // Các phần tử khác
                    ListTile(
                      title: Row(
                        children: [
                          SvgPicture.asset('assets/images/Group 2224.svg'),
                          SizedBox(width: 10),
                          Text(
                            'Thủ tục sang tên đồng hồ nước',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ProceduceDetails()),
                        );
                      },
                    ),
                    Divider(
                      height: 0.1,
                      thickness: 1,
                      color: Colors.grey[300],
                      indent: 15,
                      endIndent: 15,
                    ),
                    ListTile(
                      title: Row(
                        children: [
                          SvgPicture.asset('assets/images/Group 2224.svg'),
                          SizedBox(width: 10),
                          Text(
                            'Đăng ký định mức nước tại chung cư',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],),
                      onTap: () {

                      },
                    ),
                    Divider(
                      height: 0.1,
                      thickness: 1,
                      color: Colors.grey[300],
                      indent: 15,
                      endIndent: 15,
                    ),
                    ListTile(
                      title: Row(
                        children: [
                          SvgPicture.asset('assets/images/Group 2224.svg'),
                          SizedBox(width: 10),
                          Text(
                            'Thủ tục nâng, hạ, đổi cỡ đồng hồ nước',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],),
                      onTap: () {

                      },
                    ),
                    Divider(
                      height: 0.1,
                      thickness: 1,
                      color: Colors.grey[300],
                      indent: 15,
                      endIndent: 15,
                    ),
                    ListTile(
                      title: Row(
                        children: [
                          SvgPicture.asset('assets/images/Group 2224.svg'),
                          SizedBox(width: 10),
                          Text(
                            'Thủ tục gắn mới đồng hồ nước',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],),
                      onTap: () {

                      },
                    ),
                    Divider(
                      height: 0.1,
                      thickness: 1,
                      color: Colors.grey[300],
                      indent: 15,
                      endIndent: 15,
                    ),
                    ListTile(
                      title: Row(
                        children: [
                          SvgPicture.asset('assets/images/Group 2224.svg'),
                          SizedBox(width: 10),
                          Expanded( // Để văn bản tự động xuống dòng khi cần
                            child: RichText(
                              text: TextSpan(
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black, // Cần chỉ định màu vì `TextSpan` không có màu mặc định
                                ),
                                children: [
                                  TextSpan(text: 'Hồ sơ đăng ký mã số thuế và sang tên\n'),
                                  TextSpan(text: 'đồng hồ nước'),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      onTap: () {},
                    ),
                    Divider(
                      height: 0.1,
                      thickness: 1,
                      color: Colors.grey[300],
                      indent: 15,
                      endIndent: 15,
                    ),
                    ListTile(
                      title: Row(
                        children: [
                          SvgPicture.asset('assets/images/Group 2224.svg'),
                          SizedBox(width: 10),
                          Text(
                            'Đăng ký định mức nước',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],),
                      onTap: () {

                      },
                    ),
                  ],
                ),
              )),
    ));
  }
}

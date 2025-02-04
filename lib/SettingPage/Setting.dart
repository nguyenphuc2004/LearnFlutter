import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:te/Homepage/infoUser.dart';
import 'package:te/SettingPage/CommentList.dart';
import 'package:te/SettingPage/LinkMaDanhBo.dart';
import 'package:te/SettingPage/updateInfo.dart';
import 'package:te/SettingPage/UserManual.dart';

class Setting extends StatefulWidget {
  @override
  SettingState createState() => SettingState();
}

class SettingState extends State<Setting> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
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
          Column(
            children: [
              infoUser(),
              Expanded(
                  child: Padding(
                padding: EdgeInsets.only(left: 8, bottom: 70),
                child: ListView(
                  children: [
                    ListTile(
                      leading:
                          SvgPicture.asset('assets/images/PersonCircle.svg'),
                      title: Text('Đăng nhập bằng vân tay/FaceID'),
                      trailing: Transform.scale(
                        scale: 0.7,
                        // Giảm kích thước của Switch xuống 80%
                        child: Switch(
                          value: isSwitched,
                          onChanged: (bool value) {
                            setState(() {
                              isSwitched = value;
                              print("Switch is: $isSwitched");
                            });
                          },
                          activeColor: Colors.green,
                          inactiveThumbColor: Colors.white,
                          inactiveTrackColor: Colors.grey,
                        ),
                      ),
                      onTap: () {
                        print("Đăng nhập bằng vân tay/FaceID clicked");
                      },
                    ),
                    // Các phần tử khác
                    ListTile(
                      leading:
                          SvgPicture.asset('assets/images/PersonCircle.svg'),
                      title: Text('Cập nhật thông tin'),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => updateInfo()));
                      },
                    ),
                    ListTile(
                      leading:
                          SvgPicture.asset('assets/images/LinkOutline.svg'),
                      title: Text('Liên kết mã danh bộ'),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Linkmadanhbo())
                        );
                      },
                    ),
                    ListTile(
                      leading:
                          SvgPicture.asset('assets/images/MailOutline.svg'),
                      title: Text('Góp ý ứng dụng'),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Commentlist())
                        );
                      },
                    ),
                    ListTile(
                      leading: SvgPicture.asset('assets/images/Book.svg'),
                      title: Text('Hướng dẫn sử dụng'),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => UserManual())
                        );
                      },
                    ),
                    ListTile(
                      leading:
                          SvgPicture.asset('assets/images/InfoCircleSolid.svg'),
                      title: Text('Phiên bản'),
                      onTap: () {
                        print("Cập nhật thông tin clicked");
                      },
                    ),
                    ListTile(
                      leading: SvgPicture.asset('assets/images/Group 2370.svg'),
                      title: Text('Cập nhật ứng dụng'),
                      onTap: () {
                        print("Cập nhật thông tin clicked");
                      },
                    ),
                    ListTile(
                      leading: SvgPicture.asset('assets/images/Vector10.svg'),
                      title: Text('Đăng xuất'),
                      onTap: () {
                        print("Cập nhật thông tin clicked");
                      },
                    ),
                    ListTile(
                      leading:
                          SvgPicture.asset('assets/images/close-circle.svg'),
                      title: Text('Xóa tài khoản'),
                      onTap: () {
                        print("Cập nhật thông tin clicked");
                      },
                    ),
                  ],
                ),
              ))
            ],
          ),
        ],
      ),
    ));
  }
}

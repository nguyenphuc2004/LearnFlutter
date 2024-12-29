import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'ConfirmOTP.dart';

class Clause extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ClauseState();
}

class ClauseState extends State<Clause> {
  bool checkBoxValue = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                      // Can adjust to desired position
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
                    // Can adjust to desired position
                    child: Padding(
                        padding: EdgeInsets.only(top: 8, left: 18),
                        child: Text(
                          'Chính sách và \nĐiều khoản người dùng',
                          style: TextStyle(
                              fontSize: 20,
                              color: Color(0xff0062B6),
                              fontWeight: FontWeight.bold),
                        )),
                  ),
                ],
              )),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 600,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      // Can adjust to desired position
                      child: Padding(
                          padding: EdgeInsets.only(top: 0, left: 16),
                          child: Text(
                            'Chính sách bảo mật - Điều khoản sử \ndụng phần mềm',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      // Can adjust to desired position
                      child: Padding(
                          padding: EdgeInsets.only(top: 5, left: 16, right: 15),
                          child: Text(
                            'Quý khách vui lòng đọc bản chính sách bảo mật - '
                            'Điều khoản sử dụng dưới đây để hiểu hơn những '
                            'cam kết mà chúng tôi thực hiện, nhằm tôn trọng \n'
                            'và bảo vệ quyền lợi của người truy cập',
                            maxLines: 4,
                            overflow: TextOverflow.fade,
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          )),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      // Can adjust to desired position
                      child: Padding(
                          padding: EdgeInsets.only(top: 0, left: 16),
                          child: Text(
                            '1. Mục đích và phạm vi thu thập:',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      // Can adjust to desired position
                      child: Padding(
                          padding: EdgeInsets.only(top: 0, left: 16, right: 15),
                          child: Text(
                            'Để truy cập và sử dụng một số dịch vụ phần mềm '
                            'CSKH, bạn có thể sẽ được yêu cầu đăng ký với '
                            'chúng tôi thông tin cá nhân (Số điện thoại, Mật '
                            'khẩu, Họ tên, Ngày sinh, Giới tính, Địa chỉ Email).'
                            '\nMọi thông tin khai báo phải đảm bảo tính chính '
                            '\nxác và hợp pháp. Phần mềm CSKH không chịu mọi '
                            'trách nhiệm liên quan đến pháp luật của thông '
                            '\ntin khai báo. Chúng tôi cũng có thể thu thập thông '
                            'tin về số lần viếng thăm, bao gồm số trang bạn '
                            '\nxem, số links (liên kết) bạn click và những thông tin '
                            'khác liên quan đến việc kết nối đến hệ thống '
                            '\nCSKH. Chúng tôi cũng thu thập các thông tin mà '
                            'trình duyệt Web (Browser) bạn sử dụng mỗi khi '
                            '\ntruy cập vào trang sawaco.com.vn, bao gồm: địa '
                            'chỉ IP, loại Browser, ngôn ngữ sử dụng, thời gian '
                            '\nvà những địa chỉ mà Browser truy xuất đến. Phần'
                            ' mềm CSKH thu thập và sử dụng thông tin cá nhân'
                            ' bạn với mục đích phù hợp và hoàn toàn tuân thủ'
                            ' nội dung của “Chính sách bảo mật” này. Khi cần'
                            ' thiết,  chúng tôi có thể sử dụng những thông tin'
                            ' này để liên hệ trực tiếp với bạn dưới các hình'
                            ' thức như: Gởi thư ngỏ, thư cảm ơn, gửi tin nhắn'
                            ' SMS, thông tin về kỹ thuật và bảo mật, xử lý các'
                            ' vấn đề về dịch vụ, v.v…',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          )),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      // Can adjust to desired position
                      child: Padding(
                          padding: EdgeInsets.only(top: 0, left: 16),
                          child: Text(
                            '2. Thời gian lưu trữ thông tin:',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      // Can adjust to desired position
                      child: Padding(
                          padding: EdgeInsets.only(top: 0, left: 16, right: 15),
                          child: Text(
                            'Dữ liệu cá nhân của Khách hàng sẽ được lưu trữ cho'
                            ' đến khi có yêu cầu hủy bỏ hoặc tự khách hàng đăng'
                            ' nhập và thực hiện hủy bỏ. Còn lại trong mọi trường'
                            ' hợp thông tin cá nhân sẽ được bảo mật trên máy chủ'
                            ' của BIWASE.'
                            ' Địa chỉ của đơn vị thu thập và quản lý thông tin cá'
                            ' nhân Tên: Công ty CP - Tổng Công Ty Nước - Môi trường'
                            ' Bình Dương (BIWASE) Trụ Sở Văn Phòng: Số 11 - đường Ngô Văn Trị - P.Phú Lợi -'
                            ' Tp.Thủ Dầu Một - tỉnh Bình Dương'
                            ' cskh.biwase.com.vn',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          )),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  // Can adjust to desired position
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30, left: 8),
                    child: Checkbox(
                        value: checkBoxValue,
                        onChanged: (bool? value) {
                          setState(() {
                            checkBoxValue = value!;
                          });
                        }),
                  ),
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  // Can adjust to desired position
                  child: Padding(
                      padding: EdgeInsets.only(top: 30, left: 8),
                      child: Text(
                        'Chấp nhận các Chính sách và Điều khoản \nngười dùng của Sawaco',
                        style: TextStyle(
                            fontSize: 16,
                            color: Color(0xff0062B6),
                            fontWeight: FontWeight.bold),
                      )),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Container(
              width: 310,
              height: 44,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                    colors: [Color(0xFF003191), Color(0xFF00AEEF)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight),
                borderRadius: BorderRadius.circular(12),
              ),
              child: ElevatedButton(
                onPressed: checkBoxValue ?() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ConfirmOTP()));
                } : null,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                ),
                child: const Text(
                  "Đồng ý",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

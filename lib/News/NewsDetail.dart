import 'package:flutter/material.dart';
import 'package:te/SettingPage/updateInfo.dart';
import 'package:te/appbar/AppBarCommon.dart';

class NewsDetail extends StatefulWidget {
  @override
  NewsDetailState createState() => NewsDetailState();
}

class NewsDetailState extends State<NewsDetail> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 4, // Số lượng tab
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: AppBarCustom(
              title: "Tin tức",
              hasBackButton: true,
            ),
          ),
          body: SingleChildScrollView(child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Padding(
                  padding: const EdgeInsets.only(top: 16, left: 16),
                  child: Container(
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: Colors.blueAccent, // Màu viền của container
                      ),
                    ),
                    child: Text(
                      'Tin tức | 10/11/2023',
                      style: TextStyle(fontSize: 12, color: Color(0xFF2A8FD3)),
                    ),
                  ),
                )
              ]),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 8, left: 12),
                    child: Image.asset('assets/images/VectorWash.png'),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 16, left: 16, right: 16),
                    child: Text(
                      'Thông báo về việc chụp hình hoặc báo chỉ số cho nhân viên biên đọc',
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8, left: 16, right: 16),
                    child: Text(
                      'Thực hiện theo Chỉ thị số 10/CT-UBND ngày 19/06/2023 và Kế hoạch số 2151/KH-UBND ngày 28/06/2023 của Uỷ ban Nhân dân Thành phố Hồ Chí Minh.',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8, left: 16, right: 16),
                    child: Text(
                      'Do tình hình dịch bệnh Covid-19 vẫn diễn ra phức tạp, hiện nay công tác đọ chỉ số đồng hồ nước tại nhà khách hàng đang tạm ngưng. Vì thế, hoá đơn tiền nước từ Tháng 07/2023 trở đo cho đến khi có Thông báo mới sẽ được tính trung bình theo phương pháp giả định (tức là lấy trung bình của 03 Tháng hoá đơn gần nhất). Tuy nhiên, nhầm đảm bảo quyền lợi cho khách hàng và theo nguyên tắc tính đúng tình đủ, nếu khách hàng có nhu cầu cập nhật chỉ số tiêu thụ của Tháng ra hoá đơn, khách hàng có thể gửi hình chụp đồng hồ nước hoặc báo chỉ số tiêu thị trên đồng hồ nước cho nhân viên biên đọc (số điện thoại của nhân viên biên đọc có ghi trên phiếu báo tiền nước của Tháng hoá đơn trước đó) trước 1 hoặc 2 ngày ra hoá đơn.',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8, left: 16, right: 16),
                    child: Text(
                      'Nếu khách hàng không gửi hình chụp đồng hồ nước hoặc báo chỉ số tiêu thụ trên đồng hồ nước cho nhân viên biên đọc, Công ty Cổ phần Cấp nước sẽ tính trung bình của Tháng hoá đơn theo phương pháp giả định, mọi thắc mắc khiếu nại về sau Công ty chúng tôi sẽ không giải quyết. Trân trọng kính chào.',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  SizedBox(height: 50)
                ],
              ),
              // Đặt ListView vào Expanded để chiếm không gian còn lại
            ],
          ),)
        ),
      ),
    );
  }
}

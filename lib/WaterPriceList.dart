
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:te/appbar/AppBarCommon.dart';

class WaterPriceList extends StatefulWidget {
  const WaterPriceList({super.key});

  @override
  State<WaterPriceList> createState() => _ProceduceState();
}

class _ProceduceState extends State<WaterPriceList> {
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
              title: "Bảng giá nước ",
              hasBackButton: true,
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 30),
                  child: Image.asset('assets/images/Bảng giá nước.png'),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.85,
                  margin: EdgeInsets.only(top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Mức giá trên chưa bao gồm thuế giá trị gia tăng và phí\nbảo vệ môi trường đối với nước thải sinh hoạt',
                        style: TextStyle(
                          fontSize: 14,
                          fontStyle: FontStyle.italic,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'Đối tượng áp dụng',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF0062B6),
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            '- Đối tượng 1: ',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF0087D2),
                            ),
                          ),
                          Text(
                            'Áp dụng cho sinh hoạt các hộ gia đình',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            '- Đối tượng 2: ',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF0087D2),
                            ),
                          ),
                          Text(
                            'Đơn vị hành chính, sự nghiệp, bao gồm:',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'Các sở ban ngành, đoàn thể, Ban Đảng; Quân đội, lực lượng vũ trang; Bệnh viện, trường học',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        '- Đối tượng 3: ',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF0087D2),
                        ),
                      ),
                      Text(
                        '+ Bán sỉ: Áp dụng cho các khu công nghiệp tại đồng hồ tổng',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        '+ Bán lẻ: Các đơn vị, cơ sở sản xuất, chế biến, gia công; các nhà máy điện; các cơ sở chăn nuôi, xử lý chất thải, lò thiêu; nước phục vụ cho công trình xây dựng.',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            '- Đối tượng 4: ',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF0087D2),
                            ),
                          ),
                          Text(
                            'Áp dụng cho các loại hình kinh doanh, ',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'dịch vụ..., không thuộc các đối tượng 1 đến dối tượng 3 nêu trên, bao gồm:',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        '+ Các khách sạn, nhà hàng, nhà nghỉ, kinh doanh ăn uống, giải khát;',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        '+ Các cơ sở thẩm mỹ, rửa xe, giặt ủi, các khu vui chơi;',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        '+ Các khu chợ, siêu thị, đại lý, cửa hàng thương mại;',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        '+ Các dịch vụ cấp nước cho ghe, tàu, thuyền;',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        '+ Các hoạt động của tổ chức, cá nhân mang tính kinh doanh khác;',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        '+ Văn phòng đại diện...',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

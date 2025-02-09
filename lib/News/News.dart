import 'package:flutter/material.dart';
import 'package:te/News/NewsDetail.dart';
import 'package:te/SettingPage/updateInfo.dart';
import 'package:te/appbar/AppBarCommon.dart';

class News extends StatefulWidget {
  @override
  NewsState createState() => NewsState();
}

class NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 4, // Số lượng tab
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            scrolledUnderElevation: 0, // Tắt hiệu ứng đổi màu khi cuộn
            automaticallyImplyLeading: false,
            title: AppBarCustom(
              title: "Tin tức",
              hasBackButton: false,
            ),
          ),
          body: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                color: const Color(0xFFF1F7FF), // Màu nền của tab
                child: const TabBar(
                  indicator: BoxDecoration(
                    color: Color(0xFFD5F0FF),
                    // Màu nền tab được chọn
                  ),
                  labelColor: Color(0xFF0062B6),
                  // Màu chữ của tab được chọn
                  unselectedLabelColor: Colors.grey,
                  // Màu chữ tab chưa được chọn
                  labelStyle: TextStyle(
                    fontSize: 15, // Kích thước chữ của tab được chọn
                    fontWeight: FontWeight.bold,
                  ),
                  indicatorSize: TabBarIndicatorSize.tab,
                  tabs: [
                    Tab(text: 'Tất cả'),
                    Tab(text: 'Tin tức'),
                    Tab(text: 'Sự kiện'),
                    Tab(text: 'Khuyến mãi'),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Column(
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 16, left: 16),
                                child: Container(
                                  padding: EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(
                                      color: Colors
                                          .blueAccent, // Màu viền của container
                                    ),
                                  ),
                                  child: Text(
                                    'Tin tức | 10/11/2023',
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0xFF2A8FD3)),
                                  ),
                                ),
                              )
                            ]
                        ),
                        GestureDetector(
                          onTap: () {
                            // Chuyển tab hoặc thực hiện hành động tại đây
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    NewsDetail(), // Đổi sang tab khác
                              ),
                            );
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 8, left: 12),
                                child:
                                    Image.asset('assets/images/VectorWash.png'),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 16, left: 16),
                                child: Text(
                                  'Thông báo về việc chụp hình hoặc báo chỉ số cho nhân viên biên đọc',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 8, left: 16, right: 16),
                                child: Text(
                                  'Do tình hình dịch bệnh Covid-19 vẫn đang diễn ra phức tạp, hiện nay công tác đọc ghi số đồng hồ nước tại nhà khách hàng đang tạm ngưng.',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                            ],
                          ),
                        ),
                        // Đặt ListView vào Expanded để chiếm không gian còn lại
                        SizedBox(
                          height: 24,
                        ),
                        Expanded(
                          child: ListView(
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 16, right: 12),
                                child: Row(
                                  children: [
                                    // Hình ảnh bên trái
                                    Image.asset(
                                      'assets/images/stock-photo-woman-washing-her-hands-at-the-tap-water-shortage-concept-1011661567 1.png',
                                      // Thay đường dẫn ảnh nếu cần
                                    ),
                                    SizedBox(width: 16),
                                    // Khoảng cách giữa hình ảnh và nội dung bên phải
                                    // Nội dung bên phải
                                    Expanded(
                                      // Sử dụng Expanded để văn bản chiếm không gian còn lại
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment
                                            .start, // Căn trái nội dung
                                        children: [
                                          // Tên tin tức
                                          Text(
                                            'Thông báo ngưng cung cấp nước tại\nmột số khu vực Phường 3 Quận 4',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold),
                                            softWrap:
                                                true, // Tự động xuống dòng khi cần thiết
                                          ),
                                          SizedBox(height: 4),
                                          // Mô tả
                                          Text(
                                            'Thông báo ngưng cung cấp nước tại một số khu\nvực Phường 3 Quận 4.',
                                            overflow: TextOverflow.ellipsis,
                                            // Cắt bớt nếu mô tả quá dài
                                            maxLines: 2,
                                            // Giới hạn số dòng mô tả
                                            style: TextStyle(fontSize: 12),
                                          ),
                                          SizedBox(height: 4),
                                          // Ngày tháng
                                          Container(
                                            padding: EdgeInsets.all(1),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              border: Border.all(
                                                color: Colors
                                                    .blueAccent, // Màu viền của container
                                              ),
                                            ),
                                            child: Text(
                                              'Tin tức 10/11/2023',
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: Color(0xFF2A8FD3)),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 8),
                              Container(
                                padding: EdgeInsets.only(
                                    top: 8, left: 16, right: 16),
                                child: Row(
                                  children: [
                                    // Hình ảnh bên trái
                                    Image.asset(
                                      'assets/images/stock-photo-woman-washing-her-hands-at-the-tap-water-shortage-concept-1011661567 2.png',
                                      // Thay đường dẫn ảnh nếu cần
                                    ),
                                    SizedBox(width: 16),
                                    // Khoảng cách giữa hình ảnh và nội dung bên phải
                                    // Nội dung bên phải
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        // Căn trái nội dung
                                        children: [
                                          // Tên tin tức
                                          Text(
                                            'Hướng dẫn kiểm tra rò rỉ nước sau đồng hồ nước khách hàng',
                                            // Tên có thể thay đổi theo từng phần tử
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(height: 4),
                                          // Khoảng cách giữa tên và mô tả
                                          // Mô tả
                                          Text(
                                            'Khi hóa đơn tiền nước tăng đột ngột, mặc dù nhu cầu sử dụng nước không nhiều.',
                                            overflow: TextOverflow.ellipsis,
                                            // Cắt bớt nếu mô tả quá dài
                                            maxLines: 2,
                                            // Giới hạn số dòng mô tả
                                            style: TextStyle(fontSize: 12),
                                          ),
                                          SizedBox(height: 4),
                                          // Khoảng cách giữa mô tả và ngày tháng
                                          // Ngày tháng
                                          Container(
                                            padding: EdgeInsets.all(1),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              border: Border.all(
                                                color: Colors
                                                    .blueAccent, // Màu viền của container
                                              ),
                                            ),
                                            child: Text(
                                              'Tin tức 10/11/2023',
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: Color(0xFF2A8FD3)),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: 8),
                              Container(
                                padding: EdgeInsets.only(
                                    top: 8, left: 16, right: 16),
                                child: Row(
                                  children: [
                                    // Hình ảnh bên trái
                                    Image.asset(
                                      'assets/images/stock-photo-woman-washing-her-hands-at-the-tap-water-shortage-concept-1011661567 3.png',
                                      // Thay đường dẫn ảnh nếu cần
                                    ),
                                    SizedBox(width: 16),
                                    // Khoảng cách giữa hình ảnh và nội dung bên phải
                                    // Nội dung bên phải
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        // Căn trái nội dung
                                        children: [
                                          // Tên tin tức
                                          Text(
                                            'Thông tin về tiền nước tăng sau đợt giãn cách',
                                            // Tên có thể thay đổi theo từng phần tử
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(height: 4),
                                          // Khoảng cách giữa tên và mô tả
                                          // Mô tả
                                          Text(
                                            'Phía công ty cho biết, đại dịch COVID-19 xảy ra, kèm theo đó là các đợt giãn cách xã hội...',
                                            overflow: TextOverflow.ellipsis,
                                            // Cắt bớt nếu mô tả quá dài
                                            maxLines: 2,
                                            // Giới hạn số dòng mô tả
                                            style: TextStyle(fontSize: 12),
                                          ),
                                          SizedBox(height: 4),
                                          // Khoảng cách giữa mô tả và ngày tháng
                                          // Ngày tháng
                                          Container(
                                            padding: EdgeInsets.all(1),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              border: Border.all(
                                                color: Colors
                                                    .blueAccent, // Màu viền của container
                                              ),
                                            ),
                                            child: Text(
                                              'Tin tức 10/11/2023',
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: Color(0xFF2A8FD3)),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const Column(
                      children: [Text('llll')],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 100)
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:te/Sevices/ServiceProgressDetails.dart';
import 'package:te/appbar/AppBarCommon.dart';

class ServiceProgress extends StatefulWidget {
  const ServiceProgress({super.key});

  @override
  State<ServiceProgress> createState() => _ServiceProgressState();
}

class _ServiceProgressState extends State<ServiceProgress> {
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
          title: "Tiến độ dịch vụ",
          hasBackButton: true,
        ),
      ),
      body: Column(
        children: [
          Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  margin: EdgeInsets.only(top: 20, left: 32),
                  child: Text(
                  'Mã hồ sơ',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),
                ),)
              ),
              Align(
                alignment: Alignment.center, // Căn giữa theo trục ngang
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.85,
                  margin: EdgeInsets.only(top: 5),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: '#10098',
                      hintStyle: const TextStyle(
                          color: Color(0xFF888888), fontSize: 15),
                      filled: true,
                      fillColor: Color(0xFFEDF6FC),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide.none,
                        // Viền khi không focus
                        borderRadius:
                        BorderRadius.all(Radius.circular(8)),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide.none,
                        // Viền khi không focus
                        borderRadius:
                        BorderRadius.all(Radius.circular(8)),
                      ),
                    ),
                    keyboardType: TextInputType.text,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: MediaQuery.of(context).size.height * 0.18,
                  height: 34,
                  margin: EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xFF003191),
                        Color(0xFF00AEEF)
                      ],
                      // Hai màu gradient
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius:
                    BorderRadius.circular(12), // Bo góc
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {});
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      // Nền trong suốt
                      shadowColor: Colors.transparent, // Không bóng
                    ),
                    child: const Text(
                      "Tìm kiếm",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Container(
              width: MediaQuery.of(context).size.width * 0.95,
              child: Padding(
                padding: EdgeInsets.all(8),
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    // Các phần tử khác
                    ListTile(
                      visualDensity: VisualDensity(
                          vertical: -4), // Giảm chiều cao
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '#10098 - Yêu cầu lắp đặt đồng hồ nước mới',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Yêu cầu lắp đặt đồng hồ nươc smới cho địa chỉ ABC',
                            style: TextStyle(
                              fontSize: 11,
                            ),
                          ),
                          SizedBox(height: 5),
                          SizedBox(
                            height: 15, // Đặt chiều cao để VerticalDivider hiển thị
                            child: Row(
                              children: [
                                Text(
                                  'Yêu cầu lắp đặt',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF006CB5),
                                  ),
                                ),
                                VerticalDivider(
                                  thickness: 1,  // Độ dày
                                  width: 10,  // Khoảng cách giữa các phần tử
                                  color: Color(0xFF006CB5),  // Màu sắc
                                ),
                                Text(
                                  '10/11/2023',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0xFF006CB5),
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  'Mới',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF00A1FF),
                                  ),
                                ),
                                SizedBox(width: 5,),
                                SvgPicture.asset('assets/images/Vector20.svg')
                              ],
                            ),
                          )
                        ],
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ServiceProgressDetails()),
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
                      visualDensity: VisualDensity(
                          vertical: -4), // Giảm chiều cao
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '#10097 - Vỡ ống nước vào nhà',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Đường ống nước bị vỡ',
                            style: TextStyle(
                              fontSize: 11,
                            ),
                          ),
                          SizedBox(height: 5),
                          SizedBox(
                            height: 15, // Đặt chiều cao để VerticalDivider hiển thị
                            child: Row(
                              children: [
                                Text(
                                  'Báo lỗi',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF006CB5),
                                  ),
                                ),
                                VerticalDivider(
                                  thickness: 1,  // Độ dày
                                  width: 10,  // Khoảng cách giữa các phần tử
                                  color: Color(0xFF006CB5),  // Màu sắc
                                ),
                                Text(
                                  '10/11/2023',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0xFF006CB5),
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  'Mới',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF00A1FF),
                                  ),
                                ),
                                SizedBox(width: 5,),
                                SvgPicture.asset('assets/images/Vector20.svg')
                              ],
                            ),
                          )
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
                      visualDensity: VisualDensity(
                          vertical: -4), // Giảm chiều cao
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '#10096 - Bảo hành đồng hồ nước',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Yêu cầu kiểm tra lại đồng hồ nước',
                            style: TextStyle(
                              fontSize: 11,
                            ),
                          ),
                          SizedBox(height: 5),
                          SizedBox(
                            height: 15, // Đặt chiều cao để VerticalDivider hiển thị
                            child: Row(
                              children: [
                                Text(
                                  'Báo lỗi',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF006CB5),
                                  ),
                                ),
                                VerticalDivider(
                                  thickness: 1,  // Độ dày
                                  width: 10,  // Khoảng cách giữa các phần tử
                                  color: Color(0xFF006CB5),  // Màu sắc
                                ),
                                Text(
                                  '10/11/2023',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0xFF006CB5),
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  'Đang xử lí',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFF48120),
                                  ),
                                ),
                                SizedBox(width: 5,),
                                SvgPicture.asset('assets/images/Vector21.svg')
                              ],
                            ),
                          )
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
                      visualDensity: VisualDensity(
                          vertical: -4), // Giảm chiều cao
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '#10095 - Yêu cầu lắp đặt đồng hồ nước mới',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Yêu cầu lắp đặt đồng hồ nươc smới cho địa chỉ ABC',
                            style: TextStyle(
                              fontSize: 11,
                            ),
                          ),
                          SizedBox(height: 5),
                          SizedBox(
                            height: 15, // Đặt chiều cao để VerticalDivider hiển thị
                            child: Row(
                              children: [
                                Text(
                                  'Yêu cầu lắp đặt',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF006CB5),
                                  ),
                                ),
                                VerticalDivider(
                                  thickness: 1,  // Độ dày
                                  width: 10,  // Khoảng cách giữa các phần tử
                                  color: Color(0xFF006CB5),  // Màu sắc
                                ),
                                Text(
                                  '10/11/2023',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0xFF006CB5),
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  'Đang xử lí',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFF48120),
                                  ),
                                ),
                                SizedBox(width: 5,),
                                SvgPicture.asset('assets/images/Vector21.svg')
                              ],
                            ),
                          )
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
                      visualDensity: VisualDensity(
                          vertical: -4), // Giảm chiều cao
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '#10094 - Yêu cầu lắp đặt đồng hồ nước mới',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Yêu cầu lắp đặt đồng hồ nươc smới cho địa chỉ ABC',
                            style: TextStyle(
                              fontSize: 11,
                            ),
                          ),
                          SizedBox(height: 5),
                          SizedBox(
                            height: 15, // Đặt chiều cao để VerticalDivider hiển thị
                            child: Row(
                              children: [
                                Text(
                                  'Yêu cầu lắp đặt',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF006CB5),
                                  ),
                                ),
                                VerticalDivider(
                                  thickness: 1,  // Độ dày
                                  width: 10,  // Khoảng cách giữa các phần tử
                                  color: Color(0xFF006CB5),  // Màu sắc
                                ),
                                Text(
                                  '10/11/2023',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0xFF006CB5),
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  'Hủy',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(width: 5,),
                                SvgPicture.asset('assets/images/Vector22.svg')
                              ],
                            ),
                          )
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
                      visualDensity: VisualDensity(
                          vertical: -4), // Giảm chiều cao
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '#10093 - Yêu cầu lắp đặt đồng hồ nước mới',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Yêu cầu lắp đặt đồng hồ nươc smới cho địa chỉ ABC',
                            style: TextStyle(
                              fontSize: 11,
                            ),
                          ),
                          SizedBox(height: 5),
                          SizedBox(
                            height: 15, // Đặt chiều cao để VerticalDivider hiển thị
                            child: Row(
                              children: [
                                Text(
                                  'Yêu cầu lắp đặt',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF006CB5),
                                  ),
                                ),
                                VerticalDivider(
                                  thickness: 1,  // Độ dày
                                  width: 10,  // Khoảng cách giữa các phần tử
                                  color: Color(0xFF006CB5),  // Màu sắc
                                ),
                                Text(
                                  '10/11/2023',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0xFF006CB5),
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  'Hủy',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(width: 5,),
                                SvgPicture.asset('assets/images/Vector22.svg')
                              ],
                            ),
                          )
                        ],
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
              )),
        ],
      ),
    ));
  }
}

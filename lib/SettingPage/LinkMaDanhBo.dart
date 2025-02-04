import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:te/SettingPage/LinkMaDanhBoDetails.dart';
import 'package:te/appbar/AppBarCommon.dart';

class Linkmadanhbo extends StatefulWidget {
  const Linkmadanhbo({super.key});

  @override
  State<Linkmadanhbo> createState() => _LinkmadanhboState();
}

class _LinkmadanhboState extends State<Linkmadanhbo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: AppBarCustom(
          title: 'Danh sách mã danh bộ',
          hasBackButton: true,
        ),
      ),
      body: Column(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.only(top: 30),
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.width * 0.12,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), // Bo góc
                gradient: LinearGradient(
                  colors: [Color(0xFF003191), Color(0xFF00AEEF)],
                  // Gradient màu viền
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Container(
                margin: EdgeInsets.all(2.0), // Khoảng cách viền
                decoration: BoxDecoration(
                  color: Colors.white, // Nền trắng bên trong
                  borderRadius:
                      BorderRadius.circular(10), // Bo góc khớp với viền
                ),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LinkMaDanhBoDetails()),
                      );
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent, // Nền trong suốt
                    shadowColor: Colors.transparent, // Không bóng
                  ),
                  child: const Text(
                    "Liên kết mã danh bộ",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
                margin: EdgeInsets.only(top: 30),
                padding: EdgeInsets.all(16),
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.width * 0.4,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xFF003191), Color(0xFF00AEEF)],
                    // Hai màu gradient
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.circular(12), // Bo góc
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '1609-892-2418',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Text('Đỗ Thị Bích Ngọc',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                    Text('54/3B, HH TAN PHAT-P.PM, Phú Mỹ \n- Quận 7',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white)
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Định mức nước: 24m3',
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.white
                          ),
                        ),
                        Text('Giá biểu: 11',
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                            )
                        )
                      ],
                    ),
                  ],
                )),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.all(16),
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.width * 0.4,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xFF003191), Color(0xFF00AEEF)],
                    // Hai màu gradient
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.circular(12), // Bo góc
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '1609-892-2418',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Text('Đỗ Thị Bích Ngọc',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                    Text('54/3B, HH TAN PHAT-P.PM, Phú Mỹ \n- Quận 7',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white)
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Định mức nước: 24m3',
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.white
                          ),
                        ),
                        Text('Giá biểu: 11',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            )
                        )
                      ],
                    ),
                  ],
                )),
          ),
        ],
      ),
    ));
  }
}

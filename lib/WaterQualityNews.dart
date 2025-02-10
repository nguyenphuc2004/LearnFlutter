import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:te/appbar/AppBarCommon.dart';

class Waterqualitynews extends StatefulWidget {
  const Waterqualitynews({super.key});

  @override
  State<Waterqualitynews> createState() => _WaterqualitynewsState();
}

class _WaterqualitynewsState extends State<Waterqualitynews> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: AppBarCustom(title: "Thông báo chất lượng nước",hasBackButton: true,),
      ),
          body: Column(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  margin: EdgeInsets.only(top: 20),
                  width: 357,
                  height: 44,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Tìm kiếm',
                      hintStyle: const TextStyle(fontSize: 15),
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF0062B6)),
                        // Viền khi không focus
                        borderRadius:
                        BorderRadius.all(Radius.circular(12)),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF0062B6)),
                        // Viền khi focus
                        borderRadius:
                        BorderRadius.all(Radius.circular(12)),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 16,
                      ),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Icon(
                          Icons.search,
                        color: Color(0xFF0062B6),)
                      ),
                    ),
                    keyboardType: TextInputType.text,
                  ),
                ),
              ),
              Container(
                width: 800,
                margin: EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                    color: Color(0xFFF2F2F2)
                ),
                child: SizedBox(
                  height: 610,
                  child: ListView(
                    children: [
                      ListTile(
                        title: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12, // Màu bóng (đen nhạt)
                                blurRadius: 2, // Độ mờ của bóng
                                spreadRadius: 1, // Độ lan rộng của bóng
                                offset: Offset(2, 2), // Dịch chuyển bóng (x, y)
                              ),
                            ],
                          ),

                          child:  Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'CLN tháng 05/2024',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF0062B6),
                                ),
                              ),
                              Text(
                                ' CLN tháng 05/2024',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              Align(
                                alignment: Alignment.topRight,
                                child: Text(
                                  '06/06/2024 11:48 AM',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black26,
                                      fontStyle: FontStyle.italic
                                  ),
                                ),
                              )
                            ],),
                        ),
                        onTap: () {

                        },
                      ),
                      ListTile(
                        title: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12, // Màu bóng (đen nhạt)
                                blurRadius: 2, // Độ mờ của bóng
                                spreadRadius: 1, // Độ lan rộng của bóng
                                offset: Offset(2, 2), // Dịch chuyển bóng (x, y)
                              ),
                            ],
                          ),

                          child:  Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'CLN tháng 04/2024',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF0062B6),
                                ),
                              ),
                              Text(
                                ' CLN tháng 04/2024',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              Align(
                                alignment: Alignment.topRight,
                                child: Text(
                                  '07/05/2024 09:17 AM',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black26,
                                      fontStyle: FontStyle.italic
                                  ),
                                ),
                              )
                            ],),
                        ),
                        onTap: () {

                        },
                      ),
                      ListTile(
                        title: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12, // Màu bóng (đen nhạt)
                                blurRadius: 2, // Độ mờ của bóng
                                spreadRadius: 1, // Độ lan rộng của bóng
                                offset: Offset(2, 2), // Dịch chuyển bóng (x, y)
                              ),
                            ],
                          ),

                          child:  Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'CLN tháng 03/2024',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF0062B6),
                                ),
                              ),
                              Text(
                                ' CLN tháng 03/2024',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              Align(
                                alignment: Alignment.topRight,
                                child: Text(
                                  '05/04/2024 09:04 AM',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black26,
                                      fontStyle: FontStyle.italic
                                  ),
                                ),
                              )
                            ],),
                        ),
                        onTap: () {

                        },
                      ),
                      ListTile(
                        title: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12, // Màu bóng (đen nhạt)
                                blurRadius: 2, // Độ mờ của bóng
                                spreadRadius: 1, // Độ lan rộng của bóng
                                offset: Offset(2, 2), // Dịch chuyển bóng (x, y)
                              ),
                            ],
                          ),

                          child:  Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'CLN tháng 02/2024',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF0062B6),
                                ),
                              ),
                              Text(
                                ' CLN tháng 02/2024',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              Align(
                                alignment: Alignment.topRight,
                                child: Text(
                                  '18/03/2024 08:49 AM',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black26,
                                      fontStyle: FontStyle.italic
                                  ),
                                ),
                              )
                            ],),
                        ),
                        onTap: () {

                        },
                      ),
                      ListTile(
                        title: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12, // Màu bóng (đen nhạt)
                                blurRadius: 2, // Độ mờ của bóng
                                spreadRadius: 1, // Độ lan rộng của bóng
                                offset: Offset(2, 2), // Dịch chuyển bóng (x, y)
                              ),
                            ],
                          ),

                          child:  Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'CLN tháng 01/2024',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF0062B6),
                                ),
                              ),
                              Text(
                                ' CLN tháng 01/2024',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              Align(
                                alignment: Alignment.topRight,
                                child: Text(
                                  '22/02/2024 10:10 AM',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black26,
                                      fontStyle: FontStyle.italic
                                  ),
                                ),
                              )
                            ],),
                        ),
                        onTap: () {

                        },
                      ),
                      ListTile(
                        title: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12, // Màu bóng (đen nhạt)
                                blurRadius: 2, // Độ mờ của bóng
                                spreadRadius: 1, // Độ lan rộng của bóng
                                offset: Offset(2, 2), // Dịch chuyển bóng (x, y)
                              ),
                            ],
                          ),

                          child:  Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'CLN tháng 12/2023',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF0062B6),
                                ),
                              ),
                              Text(
                                ' CLN tháng 12/2023',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              Align(
                                alignment: Alignment.topRight,
                                child: Text(
                                  '05/01/2024 08:51 AM',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black26,
                                      fontStyle: FontStyle.italic
                                  ),
                                ),
                              )
                            ],),
                        ),
                        onTap: () {

                        },
                      ),
                      ListTile(
                        title: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12, // Màu bóng (đen nhạt)
                                blurRadius: 2, // Độ mờ của bóng
                                spreadRadius: 1, // Độ lan rộng của bóng
                                offset: Offset(2, 2), // Dịch chuyển bóng (x, y)
                              ),
                            ],
                          ),

                          child:  Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'CLN tháng 11/2024',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF0062B6),
                                ),
                              ),
                              Text(
                                ' CLN tháng 11/2024',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              Align(
                                alignment: Alignment.topRight,
                                child: Text(
                                  '19/02/2024 02:58 PM',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black26,
                                      fontStyle: FontStyle.italic
                                  ),
                                ),
                              )
                            ],),
                        ),
                        onTap: () {

                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
    ));
  }
}


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:te/appbar/AppBarCommon.dart';

class ProceduceDetails extends StatefulWidget {
  const ProceduceDetails({super.key});

  @override
  State<ProceduceDetails> createState() => _ProceduceState();
}

class _ProceduceState extends State<ProceduceDetails> {
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
              title: "Chi tiết thủ tục",
              hasBackButton: true,
            ),
          ),
          body: Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: MediaQuery.of(context).size.width*0.9,
              margin: EdgeInsets.only(top: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                      alignment: Alignment.topCenter,
                    child: Text(
                      'Thủ tục sang tên đồng hồ nước',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    padding: EdgeInsets.all(32),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Color(0xFFEDF6FC)
                    ),
                    child: Text(
                      'Nội dung thủ tục sang tên đồng hồ nước. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

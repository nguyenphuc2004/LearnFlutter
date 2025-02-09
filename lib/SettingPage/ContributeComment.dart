import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../appbar/AppBarCommon.dart';

class ContributeComment extends StatefulWidget {
  const ContributeComment({super.key});

  @override
  State<ContributeComment> createState() => _ContributeCommentState();
}

class _ContributeCommentState extends State<ContributeComment> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            automaticallyImplyLeading: false,
            title: AppBarCustom(
              title: 'Đóng góp ý kiến',
              hasBackButton: true,
            ),
          ),
          body: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 16, top: 32),
                    child: Text(
                      "Chủ đề",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF625D5D)),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center, // Căn giữa theo trục ngang
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.95,
                      margin: EdgeInsets.only(top: 8),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Chủ đề',
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
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 8,
                            horizontal: 16,
                          ),
                        ),
                        keyboardType: TextInputType.text,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 16, top: 16),
                    child: Text(
                      "Nội dung góp ý",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF625D5D)),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center, // Căn giữa theo trục ngang
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.95,
                      margin: EdgeInsets.only(top: 8),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Nội dung góp ý',
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
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 8,
                            horizontal: 16,
                          ),
                        ),
                        keyboardType: TextInputType.text,
                        maxLines: 5,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Container(
                width: 162,
                height: 42,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xFF003191), Color(0xFF00AEEF)],
                    // Hai màu gradient
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.circular(12), // Bo góc
                ),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {

                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    // Nền trong suốt
                    shadowColor: Colors.transparent, // Không bóng
                  ),
                  child: const Text(
                    "Gửi góp ý",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

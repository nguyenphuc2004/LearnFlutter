import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Inputcommon extends StatefulWidget {
  const Inputcommon({super.key});

  @override
  State<Inputcommon> createState() => _InputcommonState();
}

class _InputcommonState extends State<Inputcommon> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 16, top: 8),
          child: Text(
            "Ghi chú nơi xảy ra sự cố",
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
                hintText: 'Ghi chú nơi xảy ra sự cố',
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
        )
      ],
    );
  }
}

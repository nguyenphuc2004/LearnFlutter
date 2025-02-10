import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dropdownbuttoncommon extends StatefulWidget {
  const Dropdownbuttoncommon({super.key});

  @override
  State<Dropdownbuttoncommon> createState() => _DropdownbuttoncommonState();
}

class _DropdownbuttoncommonState extends State<Dropdownbuttoncommon> {
  String? selectedValue, selectedValue2;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 16, top: 16),
          child: Text(
            "Mã bộ danh",
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Color(0xFF625D5D)),
          ),
        ),
        Align(
          alignment: Alignment.center, // Căn giữa theo trục ngang
          child: Container(
            padding: EdgeInsets.only(top: 8),
            width: MediaQuery.of(context).size.width *
                0.95, // Chiều rộng 95% màn hình
            child: DropdownButtonFormField<String>(
              hint: const Text("20026338620"),
              value: selectedValue,
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                    horizontal: 12, vertical: 8),
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
              items: [
                DropdownMenuItem(
                  value: '1',
                  child: Row(
                    children: const [
                      Text('20026338620'),
                    ],
                  ),
                ),
                DropdownMenuItem(
                  value: '2',
                  child: Row(
                    children: const [
                      Text('20026338621'),
                    ],
                  ),
                ),
                DropdownMenuItem(
                  value: '3',
                  child: Row(
                    children: const [
                      Text('20026338622'),
                    ],
                  ),
                ),
                DropdownMenuItem(
                  value: '4',
                  child: Row(
                    children: const [
                      Text('20026338623'),
                    ],
                  ),
                ),
              ],
              onChanged: (String? newValue) {
                setState(() {
                  selectedValue2 = newValue;
                });
              },
            ),
          ),
        )
      ],
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationStatus extends StatefulWidget {
  @override
  State<NotificationStatus> createState() => _NotificationStatusState();
}

class _NotificationStatusState extends State<NotificationStatus> {
  late String _selectedValue = 'Option 1';

  List<Map<String, String>> options = [
    {'value': 'Option 1', 'label': 'Chờ duyệt'},
    {'value': 'Option 2', 'label': 'Đã duyệt'},
    {'value': 'Option 3', 'label': 'Trùng'},
    {'value': 'Option 4', 'label': 'Đã đăng ký'},
    {'value': 'Option 5', 'label': 'BS CT07-08'},
    {'value': 'Option 6', 'label': 'BS Số định danh'},
    {'value': 'Option 7', 'label': 'BS Hình ảnh'},
    {'value': 'Option 8', 'label': 'Không đủ điều kiện'},
    {'value': 'Option 9', 'label': 'Đã cắt chuyển'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.width * 1.4,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 3,
                blurRadius: 7,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 60,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xFF003191), Color(0xFF00AEEF)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16)),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Trạng thái',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 17),
                  ),
                ),
              ),
              Expanded(
                child: ListView(
                  children: [
                    for (int i = 0; i < options.length; i++) ...[
                      RadioListTile<String>(
                        title: Text(options[i]['label']!),
                        value: options[i]['value']!,
                        groupValue: _selectedValue,
                        controlAffinity: ListTileControlAffinity.trailing,
                        onChanged: (String? value) {
                          setState(() {
                            _selectedValue = value!;
                          });
                          Navigator.pop(context, _selectedValue); // Trả về giá trị
                        },
                        activeColor: Color(0xFF0062B6),
                      ),
                      if (i < options.length - 1)
                        Divider(
                          height: 1,
                          thickness: 1,
                          color: Colors.grey[300],
                          indent: 15,
                          endIndent: 15,
                        ),
                    ],
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

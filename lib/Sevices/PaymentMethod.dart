
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:te/appbar/AppBarCommon.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({super.key});

  @override
  State<PaymentMethod> createState() => _ProceduceState();
}

class _ProceduceState extends State<PaymentMethod> {
  String? selectedValue, selectedValue2;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: AppBarCustom(
              title: "Hình thức thanh toán",
              hasBackButton: true,
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Align(
                    alignment: Alignment.center, // Căn giữa theo trục ngang
                    child: Container(
                      padding: EdgeInsets.only(top: 8),
                      width: MediaQuery.of(context).size.width *
                          0.9, // Chiều rộng 95% màn hình
                      child: DropdownButtonFormField<String>(
                        hint: const Text("00000000000"),
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
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.84,
                  margin: EdgeInsets.only(top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'HƯỚNG DẪN THANH TOÁN  HÓA ĐƠN TIỀN NƯỚC',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          color: Color(0xFF0062B6),
                        ),
                      ),
                      Text(
                        ' 1. THANH TOÁN TIỀN NƯỚC BẰNG MÃ QR ',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF0087D2),
                        ),
                      ),
                      Text(
                        '( DÙNG CHO APP NGÂN HÀNG)',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF0087D2),
                        ),
                      ),
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sed nisi lacus sed viverra. Morbi tempus iaculis urna id volutpat. Amet dictum sit amet justo donec enim diam. Dolor sed viverra ipsum nunc aliquet. Nec tincidunt praesent semper feugiat nibh. Quis commodo odio aenean sed adipiscing diam donec adipiscing tristique. Massa enim nec dui nunc.',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        ' 2. THANH TOÁN TIỀN NƯỚC QUA ỨNG DỤNG NGÂN HÀNG, VÍ ĐIỆN TỬ',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF0087D2),
                        ),
                      ),
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sed nisi lacus sed viverra. Morbi tempus iaculis urna id volutpat. Amet dictum sit amet justo donec enim diam. Dolor sed viverra ipsum nunc aliquet. Nec tincidunt praesent semper feugiat nibh. Quis commodo odio aenean sed adipiscing diam donec adipiscing tristique. Massa enim nec dui nunc.',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        ' 3. THANH TOÁN CHUYỂN KHOẢN (UNC)',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF0087D2),
                        ),
                      ),
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sed nisi lacus sed viverra. Morbi tempus iaculis urna id volutpat. Amet dictum sit amet justo donec enim diam. Dolor sed viverra ipsum nunc aliquet. Nec tincidunt praesent semper feugiat nibh. Quis commodo odio aenean sed adipiscing diam donec adipiscing tristique. Massa enim nec dui nunc.',
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

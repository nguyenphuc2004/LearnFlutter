import 'package:flutter/material.dart';
import 'SignUp.dart';
import 'SignIn.dart';
import 'Clause.dart';
import 'ConfirmOTP.dart';
import 'package:pinput/pinput.dart';
void main() {
  runApp(MaterialApp(
    home: SignIn(),
    debugShowCheckedModeBanner: false, // Tắt banner debug
  ));
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Thông báo"),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             showDialog(
//               context: context,
//               barrierDismissible: false, // Không thể đóng khi nhấn ngoài
//               builder: (BuildContext context) {
//                 return Center(
//                   child: Container(
//                     width: 300,
//                     height: 200,
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(16),
//                     ),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         const Text(
//                           "Thông báo",
//                           style: TextStyle(
//                             fontSize: 18,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         const SizedBox(height: 10),
//                         const Divider(
//                           color: Colors.grey, // Màu của đường gạch ngang
//                           thickness: 1.0,
//                           indent: 20, // Khoảng cách từ trái
//                           endIndent: 20, // Khoảng cách từ phải
//                         ),
//                         const SizedBox(height: 10),
//                         const Text(
//                           "Bạn có muốn tiếp tục?",
//                           textAlign: TextAlign.center,
//                           style: TextStyle(fontSize: 16),
//                         ),
//                         const SizedBox(height: 30),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                           children: [
//                             ElevatedButton(
//                               onPressed: () {
//                                 Navigator.of(context).pop(); // Đóng thông báo
//                               },
//                               style: ElevatedButton.styleFrom(
//                                 backgroundColor: Colors.grey, // Màu nút "Đóng"
//                               ),
//                               child: const Text("Đóng"),
//                             ),
//                             ElevatedButton(
//                               onPressed: () {
//                                 Navigator.of(context).pop(); // Thực hiện hành động và đóng
//                                 ScaffoldMessenger.of(context).showSnackBar(
//                                   const SnackBar(
//                                     content: Text("Bạn đã đồng ý!"),
//                                   ),
//                                 );
//                               },
//                               style: ElevatedButton.styleFrom(
//                                 backgroundColor: Colors.blue, // Màu nút "Đồng ý"
//                               ),
//                               child: const Text("Đồng ý"),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 );
//               },
//             );
//           },
//           child: const Text("Hiển thị thông báo"),
//         ),
//       ),
//     );
//   }
// }

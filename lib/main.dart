import 'package:flutter/material.dart';
import 'package:te/Service.dart';
import 'HomePage.dart';
import 'bottomBar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
void main() {
  runApp(MaterialApp(
    home: MyHomePage(),
    debugShowCheckedModeBanner: false, // Tắt banner debug
  ));
}
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyPageView(),
//     );
//   }
// }
//
// class MyPageView extends StatefulWidget {
//   @override
//   _MyPageViewState createState() => _MyPageViewState();
// }
//
// class _MyPageViewState extends State<MyPageView> {
//   // Khai báo PageController để điều khiển trang
//   final PageController _pageController = PageController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("PageView Demo")),
//       body: PageView(
//         controller: _pageController, // Điều khiển PageView
//         children: [
//           // Các trang trong PageView
//           Container(
//             color: Colors.red,
//             child: Center(child: Text("Page 1", style: TextStyle(fontSize: 24, color: Colors.white))),
//           ),
//           Container(
//             color: Colors.green,
//             child: Center(child: Text("Page 2", style: TextStyle(fontSize: 24, color: Colors.white))),
//           ),
//           Container(
//             color: Colors.blue,
//             child: Center(child: Text("Page 3", style: TextStyle(fontSize: 24, color: Colors.white))),
//           ),
//         ],
//       ),
//     );
//   }
// }
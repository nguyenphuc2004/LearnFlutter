import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:te/appbar/AppBarCommon.dart';

class UserManual extends StatefulWidget {
  const UserManual({super.key});

  @override
  State<UserManual> createState() => _UserManualState();
}

class _UserManualState extends State<UserManual> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: AppBarCustom(
          title: "Hướng dẫn sử dụng",
          hasBackButton: true,
        ),
      ),
      body: Container(
        child: Align(
          alignment: Alignment.topCenter, // Căn giữa theo trục ngang
          child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.width * 1.4,
              margin: EdgeInsets.only(top: 30),
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(
                  color: Color(0xFFEDF6FC),
                  borderRadius: BorderRadius.circular(16)),
              child: Column(
                children: [
                  Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sed nisi lacus sed viverra. Morbi tempus iaculis urna id volutpat. Amet dictum sit amet justo donec enim diam. Dolor sed viverra ipsum nunc aliquet. Nec tincidunt praesent semper feugiat nibh. Quis commodo odio aenean sed adipiscing diam donec adipiscing tristique. Massa enim nec dui nunc.'
                    ,textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 20),
                  Text(
                      'Eu ultrices vitae auctor eu augue. Ornare quam viverra orci sagittis eu volutpat odio facilisis mauris. Ultricies lacus sed turpis tincidunt id aliquet risus feugiat. Velit ut tortor pretium viverra suspendisse. Rhoncus est pellentesque elit ullamcorper dignissim cras tincidunt. Ipsum dolor sit amet consectetur adipiscing elit ut aliquam. Ultricies mi quis hendrerit dolor magna eget est lorem. At ultrices mi tempus imperdiet nulla malesuada. Vitae suscipit tellus mauris a diam. Tempus egestas sed sed risus pretium. Fames ac turpis egestas maecenas pharetra convallis posuere. Venenatis lectus magna fringilla urna porttitor.'
                    ,textAlign: TextAlign.justify,
                  ),
                ],
              )),
        ),
      ),
    ));
  }
}

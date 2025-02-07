import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:te/appbar/AppBarCommon.dart';

class NotificationDetails extends StatefulWidget {
  const NotificationDetails({super.key});

  @override
  State<NotificationDetails> createState() => _NotificationDetailsState();
}

class _NotificationDetailsState extends State<NotificationDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: AppBarCustom(
          title: "Chi tiết thông báo",
          hasBackButton: true,
        ),
      ),
          body: Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.only(top: 30),
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Color(0xFFEDF6FC)
              ),
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.6,
              child: Expanded( // Để văn bản tự động xuống dòng khi cần
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black, // Cần chỉ định màu vì `TextSpan` không có màu mặc định
                    ),
                    children: [
                      TextSpan(text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sed nisi lacus sed viverra. Morbi tempus iaculis urna id volutpat. Amet dictum sit amet justo donec enim diam. Dolor sed viverra ipsum nunc aliquet. Nec tincidunt praesent semper feugiat nibh. Quis commodo odio aenean sed adipiscing diam donec adipiscing tristique. Massa enim nec dui nunc.\n\n'),
                      TextSpan(text: 'Eu ultrices vitae auctor eu augue. Ornare quam viverra orci sagittis eu volutpat odio facilisis mauris.'
                          'Ultricies lacus sed turpis tincidunt id aliquet risus feugiat. Velit ut tortor pretium viverra suspendisse. Rhoncus est pellentesque elit ullamcorper dignissim cras tincidunt. Ipsum dolor sit amet consectetur adipiscing elit ut aliquam. Ultricies mi quis hendrerit dolor magna eget est lorem. At ultrices mi tempus imperdiet nulla malesuada. Vitae suscipit tellus mauris a diam. Tempus egestas sed sed risus pretium. Fames ac turpis egestas maecenas pharetra convallis posuere. Venenatis lectus magna fringilla urna porttitor.'),
                    ],
                  ),
                ),
              ),
            ),
          ),
    ));
  }
}

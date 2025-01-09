import 'package:flutter/material.dart';

class partnerBank extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.38,
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 16),
              child: Text(
                'Đối tác thu hộ',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0062B6)),
              ),
            ),
          ),
          Align(alignment: Alignment.topCenter,
            child: Padding(
            padding: EdgeInsets.all(32),
            child: GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, // Số cột
                crossAxisSpacing: 2, // Khoảng cách giữa các cột (giảm từ 5 xuống 2)
                mainAxisSpacing: 2, // Khoảng cách giữa các hàng (giảm từ 1 xuống 2)
              ),
              itemCount: 6,
              itemBuilder: (context, index) {
                String imagePath;
                switch (index) {
                  case 0:
                    imagePath = 'assets/images/bank1.png';
                    break;
                  case 1:
                    imagePath = 'assets/images/bank2.png';
                    break;
                  case 2:
                    imagePath = 'assets/images/bank3.png';
                    break;
                  case 3:
                    imagePath = 'assets/images/bank4.png';
                    break;
                  case 4:
                    imagePath = 'assets/images/bank5.png';
                    break;
                  case 5:
                    imagePath = 'assets/images/bank6.png';
                    break;
                  default:
                    imagePath = 'assets/images/bank6.png'; // Ảnh mặc định
                }
                return Container(
                  child: AspectRatio(
                    aspectRatio: 1, // Tỷ lệ chiều rộng và chiều cao là 1:1
                    child: Image.asset(
                      imagePath,
                      // Đảm bảo ảnh được hiển thị đầy đủ trong khung
                    ),
                  ),
                );
              },
            ),
          ),),

        ],
      ),
    );
  }
}

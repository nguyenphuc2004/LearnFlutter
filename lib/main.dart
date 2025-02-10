import 'package:flutter/material.dart';
import 'package:te/SignIn.dart';

void main() {
  runApp(MaterialApp(
    home: SignIn(),
    debugShowCheckedModeBanner: false,
  ));
}


class ScreenA extends StatefulWidget {
  const ScreenA({Key? key}) : super(key: key);

  @override
  _ScreenAState createState() => _ScreenAState();
}

class _ScreenAState extends State<ScreenA> {
  String dataFromB ="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Màn hình A")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Dữ liệu từ màn hình B: $dataFromB"),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                // Chuyển sang màn hình B và nhận dữ liệu trả về
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ScreenB(data: "Hello từ A")),
                );

                // Nếu có dữ liệu trả về, cập nhật state
                if (result != null) {
                  setState(() {
                    dataFromB = result;
                  });
                }
              },
              child: const Text("Đi đến màn hình B"),
            ),
          ],
        ),
      ),
    );
  }
}

class ScreenB extends StatelessWidget {
  final String data;

  const ScreenB({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Màn hình B")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Dữ liệu từ màn hình A: $data"),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Trả về dữ liệu khi quay lại màn hình A
                Navigator.pop(context, "Xin chào từ B");
              },
              child: const Text("Quay lại màn hình A"),
            ),
          ],
        ),
      ),
    );
  }
}







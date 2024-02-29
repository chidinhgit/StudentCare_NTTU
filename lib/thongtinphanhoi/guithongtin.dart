import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FeedbackForm(),
    );
  }
}

class FeedbackForm extends StatefulWidget {
  @override
  _FeedbackFormState createState() => _FeedbackFormState();
}

class _FeedbackFormState extends State<FeedbackForm> {
  final TextEditingController _feedbackController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gửi phản hồi'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Nhận xét của bạn:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _feedbackController,
              maxLines: 5,
              decoration: InputDecoration(
                hintText: 'Nhập phản hồi của bạn...',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Xử lý logic gửi phản hồi ở đây
                String feedback = _feedbackController.text;
                // Gọi hàm xử lý gửi phản hồi (có thể là API hoặc các bước khác)
                sendFeedback(feedback);
              },
              child: Text('Gửi phản hồi'),
            ),
          ],
        ),
      ),
    );
  }

  void sendFeedback(String feedback) {
    // Điều này là nơi bạn sẽ thực hiện xử lý gửi phản hồi, chẳng hạn như gửi đến một API hoặc lưu vào cơ sở dữ liệu.
    // Ở đây chỉ in ra màn hình console cho mục đích minh họa.
    print('Phản hồi của người dùng: $feedback');
    // Có thể thêm logic gửi dữ liệu đến server ở đây
  }
}

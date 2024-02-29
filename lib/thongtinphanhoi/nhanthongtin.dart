import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FeedbackList(),
    );
  }
}

class FeedbackList extends StatefulWidget {
  @override
  _FeedbackListState createState() => _FeedbackListState();
}

class _FeedbackListState extends State<FeedbackList> {
  List<String> feedbacks = [
    'Phản hồi 1: Rất hài lòng với ứng dụng!',
    'Phản hồi 2: Giao diện đẹp và dễ sử dụng.',
    'Phản hồi 3: Cần cải thiện tốc độ tải trang.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Danh sách phản hồi'),
      ),
      body: ListView.builder(
        itemCount: feedbacks.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(feedbacks[index]),
            ),
          );
        },
      ),
    );
  }
}

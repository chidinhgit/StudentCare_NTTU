import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class lichhoc extends StatefulWidget {
  @override
  _lichhocState createState() => _lichhocState();
}

class _lichhocState extends State<lichhoc> {
  bool emoji = false;
  bool photo = false;
  bool savephoto = false;
  bool goiy = false;
  bool block = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          title: Text('Lịch học'),
          backgroundColor: Colors.blue,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    child: ListView(
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            title: Text(
                              "Tiết 1 - 3 ( 1/11/2023 )",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Divider(height: 1, indent: 65),
                          ListTile(
                            leading: CircleAvatar(
                              radius: 12,
                              backgroundColor: Colors.blue,
                            ),
                            title: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 4),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "21DTH2A: Chuyên đề chuyên sâu Trí tuệ \nnhân tạo 1 (Lý thuyết)",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      "Nhóm : 1 ",
                                    ),
                                    SizedBox(height: 2),
                                    Text("Địa điểm: L.VT-203 "),
                                    SizedBox(height: 2),
                                    Text("Giảng viên: Đặng Như Phú")
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          Divider(height: 4, indent: 5),
                          ListTile(
                            title: Text(
                              "Tiết 4 - 6 ( 1/11/2023 )",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Divider(height: 1, indent: 65),
                          ListTile(
                            leading: CircleAvatar(
                              radius: 12,
                              backgroundColor: Colors.blue,
                            ),
                            title: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 8),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "21DTH2A: Chuyên đề chuyên sâu Trí tuệ \nnhân tạo 1 (Thực hành)",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      "Nhóm :        1\nĐịa điểm:     L.VT-203   \nGiảng viên:  Đặng Như Phú",
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ]),
                  ],
                ))
              ],
            )));
  }
}

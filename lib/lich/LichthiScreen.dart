import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:table_calendar/table_calendar.dart';

class lichthi extends StatefulWidget {
  @override
  _lichthiState createState() => _lichthiState();
}

class _lichthiState extends State<lichthi> {
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
          title: Text('Lịch thi'),
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
                              "Tiết 1 - 2 ( 2/11/2023 )",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Divider(height: 1, indent: 65),
                          ListTile(
                            leading: CircleAvatar(
                              radius: 12,
                              backgroundColor: Color.fromRGBO(236, 197, 43, 1),
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
                                      "21DTH1B: Pháp luật đại cương\n (Lý thuyết)",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      "Nhóm :      2\nTừ tỉ số:    1-25   \nĐịa điểm:  L.VT-203",
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

import 'package:flutter/material.dart';
import 'package:notification_nttu/lich/LichhocScreen.dart';
import 'package:notification_nttu/lich/LichthiScreen.dart';
import 'package:notification_nttu/lich/TatcaScreen.dart';
import 'package:table_calendar/table_calendar.dart';

void main() {
  runApp(MaterialApp(
    home: TimetableApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class EventScreen extends StatelessWidget {
  final DateTime selectedDay;

  EventScreen({required this.selectedDay});

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class TimetableApp extends StatefulWidget {
  const TimetableApp({Key? key}) : super(key: key);

  @override
  State<TimetableApp> createState() => _TimetableAppState();
}

class _TimetableAppState extends State<TimetableApp> {
  DateTime today = DateTime.now();

  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });

    if (isSameDay(day, DateTime.utc(2023, 11, 1))) {
      // Chuyển hướng đến màn hình khác khi chọn ngày 1
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => lichhoc(),
        ),
      );
    } else if (isSameDay(day, DateTime.utc(2023, 11, 2))) {
      // Chuyển hướng đến màn hình khác khi chọn ngày 2
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => lichthi(),
        ),
      );
    } else {
      // Chuyển hướng đến màn hình sự kiện với ngày được chọn
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => EventScreen(selectedDay: day),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Thời khóa biểu"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: content(),
    );
  }

  Widget content() {
    return Column(
      children: [
        Container(
          child: TableCalendar(
            locale: "en_US",
            rowHeight: 43,
            headerStyle: HeaderStyle(formatButtonVisible: false),
            selectedDayPredicate: (day) => isSameDay(day, today),
            focusedDay: today,
            firstDay: DateTime.utc(2023, 1, 1),
            lastDay: DateTime.utc(2030, 12, 31),
            onDaySelected:
                _onDaySelected, // Thay đổi lastDay thành một ngày sau firstDay
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Container(
          child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => tatca()),
                );
              },
              child: Text("Tất cả", style: TextStyle(fontSize: 16)),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Color.fromRGBO(30, 130, 76, 1)),
                minimumSize: MaterialStateProperty.all<Size>(
                  Size(350, 40),
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              )),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => lichhoc(),
                  ),
                );
              },
              child: Text("Lịch học", style: TextStyle(fontSize: 16)),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Color.fromRGBO(52, 152, 219, 1)),
                minimumSize: MaterialStateProperty.all<Size>(
                  Size(350, 40),
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              )),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => lichthi(),
                  ),
                );
              },
              child: Text("Lịch thi", style: TextStyle(fontSize: 16)),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Color.fromRGBO(236, 197, 43, 1)),
                minimumSize: MaterialStateProperty.all<Size>(
                  Size(350, 40),
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              )),
        ),
      ],
    );
  }
}

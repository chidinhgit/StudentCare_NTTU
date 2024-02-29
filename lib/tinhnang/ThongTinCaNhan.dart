import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Thông tin cá nhân',
      theme: ThemeData(
        primaryColor: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: UserProfilePage(),
    );
  }
}

class UserProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Thông tin cá nhân'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Center(
            child: Column(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/avatar.jpg'),
                  radius: 50,
                ),
                SizedBox(height: 20),
                Text(
                  'Tên Người Dùng',
                  style: TextStyle(fontSize: 24),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
          ListTile(
            title: Text(
              "Trạng thái :                Đang học",
              style: TextStyle(fontSize: 16),
            ),
          ),
          Divider(height: 1, thickness: 1.5, indent: 18),
          ListTile(
            title: Text(
              "Giới tính :                   Nam",
              style: TextStyle(fontSize: 16),
            ),
          ),
          Divider(height: 1, thickness: 1.5, indent: 18),
          ListTile(
            title: Text(
              "Ngày sinh:                 26/02/2003",
              style: TextStyle(fontSize: 16),
            ),
          ),
          Divider(height: 1, thickness: 1.5, indent: 18),
          ListTile(
            title: Text(
              "MSSV:                        2100011839",
              style: TextStyle(fontSize: 16),
            ),
          ),
          Divider(height: 1, thickness: 1.5, indent: 18),
          ListTile(
            title: Text(
              "Lớp:                            21DTH1D",
              style: TextStyle(fontSize: 16),
            ),
          ),
          Divider(height: 1, thickness: 1.5, indent: 18),
          ListTile(
            title: Text(
              "Bậc đào tạo:             Đại học",
              style: TextStyle(fontSize: 16),
            ),
          ),
          Divider(height: 1, thickness: 1.5, indent: 18),
          ListTile(
            title: Text(
              "Khoa:                         Khoa công nghệ thông tin",
              style: TextStyle(fontSize: 16),
            ),
          ),
          Divider(height: 1, thickness: 1.5, indent: 18),
          ListTile(
            title: Text(
              "Chuyên ngành:        Trí tuệ nhân tạo",
              style: TextStyle(fontSize: 16),
            ),
          ),
          Divider(height: 1, thickness: 1.5, indent: 18),
          ListTile(
            title: Text(
              "Đia chỉ:                     Thành phố Pleiku,Tỉnh Gia Lai",
              style: TextStyle(fontSize: 16),
            ),
          ),
          Divider(height: 1, thickness: 1.5, indent: 18),
          ListTile(
            title: Text(
              "SĐT:                          0935019948",
              style: TextStyle(fontSize: 16),
            ),
          ),
          Divider(height: 1, thickness: 1.5, indent: 18),
          ListTile(
            title: Text(
              "Nơi sinh:                  Tỉnh Gia Lai",
              style: TextStyle(fontSize: 16),
            ),
          ),
          Divider(height: 1, thickness: 1.5, indent: 18),
          SizedBox(
            width: 370,
            child: ElevatedButton(
              onPressed: () {
                // Xử lý khi nút được nhấn
              },
              child: Text('Đăng xuất'),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20), // Điều chỉnh bo viền
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

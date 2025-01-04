import 'package:flutter/material.dart';
import 'package:flutter_app/cv.dart';
import 'package:flutter_app/container.dart';
import 'package:flutter_app/squire.dart';
import 'package:flutter_app/simple_title.dart';
import 'package:flutter_app/container2.dart';
import 'package:flutter_app/material.dart';
import 'package:flutter_app/drawer.dart';
import 'package:flutter_app/list.dart';
import 'package:flutter_app/main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home Work Drawer',
      theme: ThemeData.light(),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isDarkMode = false;

  void toggleTheme() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }

  Widget buildDrawerItem({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon, color: isDarkMode ? Colors.white : Colors.black),
      title: Text(title,
          style: TextStyle(color: isDarkMode ? Colors.white : Colors.black)),
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Work', style: TextStyle(color: Colors.blue[900])),
        backgroundColor: Colors.tealAccent,
        iconTheme: IconThemeData(color: Colors.blue[900]),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(
        child: Container(
          color: isDarkMode ? Colors.black : Colors.white,
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text('. Mubarak',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: isDarkMode ? Colors.white : Colors.black)),
                accountEmail: Text('+967 77 360 1440',
                    style: TextStyle(
                        fontSize: 14,
                        color: isDarkMode ? Colors.white70 : Colors.black54)),
                currentAccountPicture: const CircleAvatar(
                  backgroundImage: AssetImage("assest/images/photo.jpg"),
                ),
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 11, 126, 155)),
                otherAccountsPictures: [
                  IconButton(
                    icon: Icon(isDarkMode ? Icons.wb_sunny : Icons.nights_stay,
                        color: Colors.white),
                    onPressed: toggleTheme,
                  ),
                ],
              ),
              // استخدام الدالة لإنشاء عناصر القائمة
              buildDrawerItem(
                icon: Icons.person,
                title: 'CV',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CvPage()),
                  );
                },
              ),
              Divider(color: isDarkMode ? Colors.white70 : Colors.black54),
              buildDrawerItem(
                icon: Icons.open_in_new,
                title: 'container_1',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyContainer()),
                  );
                },
              ),
              buildDrawerItem(
                icon: Icons.videocam,
                title: 'Squire',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Squires()),
                  );
                },
              ),
              buildDrawerItem(
                icon: Icons.play_arrow,
                title: 'simple title',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SimpleTitle()),
                  );
                },
              ),
              buildDrawerItem(
                icon: Icons.video_library,
                title: 'container2',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Containers()),
                  );
                },
              ),
              buildDrawerItem(
                icon: Icons.navigate_next,
                title: 'Material',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Materialss()),
                  );
                },
              ),

              buildDrawerItem(
                icon: Icons.navigate_next,
                title: 'Telegram Drawer',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TelegramDrawer()),
                  );
                },
              ),

              buildDrawerItem(
                icon: Icons.navigate_next,
                title: 'list',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyList()),
                  );
                },
              ),
              Divider(color: isDarkMode ? Colors.white70 : Colors.black54),
              buildDrawerItem(
                icon: Icons.navigate_next,
                title: 'ToDo',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyApptodo()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      body: Container(
        color: Colors.white12,
        child: const Center(
          child: Text('المحتوى الرئيسي'),
        ),
      ),
    );
  }
}

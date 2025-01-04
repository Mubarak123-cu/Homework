import 'package:flutter/material.dart';

void main() {
  runApp(TelegramDrawer());
}

class TelegramDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Telegram Drawer',
      theme: ThemeData.light(), // الإعداد الافتراضي لوضع الضوء
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        
        
        title: Text('Telegram', style: TextStyle(color: Colors.blue[900])),
        backgroundColor: const Color.fromRGBO(118, 115, 158, 1),
        iconTheme: IconThemeData(color: Colors.blue[900]),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(
        child: Container(
          color: isDarkMode ? Colors.black : Colors.white, // تغيير لون الدرج
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text('. Mubarak', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: isDarkMode ? Colors.white : Colors.black)),
                accountEmail: Text('+967 77 360 1440', style: TextStyle(fontSize: 14, color: isDarkMode ? Colors.white70 : Colors.black54)),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assest/images/photo.jpg"), // تأكد من وضع الصورة هنا
                ),
                decoration: BoxDecoration(color: Colors.blueGrey),
                otherAccountsPictures: [
                  IconButton(
                    icon: Icon(isDarkMode ? Icons.wb_sunny : Icons.nights_stay, color: Colors.white),
                    onPressed: toggleTheme,
                  ),
                ],
              ),

              ListTile(
                leading: Icon(Icons.person, color: isDarkMode ? Colors.white : Colors.black),
                title: Text('My Profile', style: TextStyle(color: isDarkMode ? Colors.white : Colors.black)),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Divider(color: isDarkMode ? Colors.white70 : Colors.black54),
              ListTile(
                leading: Icon(Icons.group, color: isDarkMode ? Colors.white : Colors.black),
                title: Text('New Group', style: TextStyle(color: isDarkMode ? Colors.white : Colors.black)),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.contacts, color: isDarkMode ? Colors.white : Colors.black),
                title: Text('Contacts', style: TextStyle(color: isDarkMode ? Colors.white : Colors.black)),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.phone, color: isDarkMode ? Colors.white : Colors.black),
                title: Text('Calls', style: TextStyle(color: isDarkMode ? Colors.white : Colors.black)),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.save, color: isDarkMode ? Colors.white : Colors.black),
                title: Text('Saved Messages', style: TextStyle(color: isDarkMode ? Colors.white : Colors.black)),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.settings, color: isDarkMode ? Colors.white : Colors.black),
                title: Text('Settings', style: TextStyle(color: isDarkMode ? Colors.white : Colors.black)),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Divider(color: isDarkMode ? Colors.white70 : Colors.black54),
              ListTile(
                leading: Icon(Icons.group_add, color: isDarkMode ? Colors.white : Colors.black),
                title: Text('Invite Friends', style: TextStyle(color: isDarkMode ? Colors.white : Colors.black)),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.info, color: isDarkMode ? Colors.white : Colors.black),
                title: Text('Telegram Features', style: TextStyle(color: isDarkMode ? Colors.white : Colors.black)),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: Text('المحتوى الرئيسي'),
      ),
    );
  }
}


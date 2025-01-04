import 'package:flutter/material.dart';

void main() {
  runApp(CvPage());
}

class CvPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // إخفاء شريط التصحيح
      home: Scaffold(
        appBar: AppBar(
          title: const Text('السيرة الذاتية') , 
          titleTextStyle: const TextStyle(color: Color(0xFFEBE7E7)) , 
          
          
          
          centerTitle: true,
          backgroundColor: const Color(0xFF9B1B30), 
          actions: [
            IconButton(
              icon: const Icon(Icons.search), // أيقونة البحث
              onPressed: () {
                print('بحث');
              },
            ),
            PopupMenuButton(
              icon: const Icon(Icons.more_vert , color: Color(0xFFEBE7E7),), // أيقونة الثلاث نقاط
              itemBuilder: (BuildContext context) {
                return [
                 const PopupMenuItem(
                    child: Text('الإعدادات'),
                    value: 1,
                  ),
                  const PopupMenuItem(
                    child:  Text('عن التطبيق'),
                    value: 2,
                  ),
                ];
              },
            ),
          ],
          leading: Builder(
            builder: (context) => IconButton(
              icon:const Icon(Icons.menu, color: Color(0xFFEBE7E7),), // أيقونة الشطيرة
              onPressed: () {
                Scaffold.of(context).openDrawer(); // فتح القائمة الجانبية
              },
            ),
          ),
        ),
        drawer: const Drawer( backgroundColor: Color(0xFF9B1B30),
        ),
        body: Container(
          color: Colors.yellow, // لون محتوى الصفحة أصفر
          child: Center(
            child: Container(
              width: 320, // عرض الـ Container
              padding:const EdgeInsets.all(16), // حواف داخلية
              decoration: BoxDecoration(
                color: const Color(0xFF9B1B30), 
                borderRadius: BorderRadius.circular(8), // زوايا مستديرة
              ),
              child:const Directionality(
                textDirection: TextDirection.rtl, // اتجاه النص من اليمين لليسار
                child: Text(
                  'الاسم: مبارك عادل محمد \n'
                  'العمر: 20\n'
                  'الجنسية: يمني\n'
                  'التخصص: أمن سيبراني\n'
                  'المستوى: بكالوريوس\n'
                  'الأعمال السابقة:\n'
                  '1- طالب\n'
                  '2- مهندس\n'
                  '3- خبير أمن سيبراني\n'
                  'المهارات:\n'
                  '1- اللغة الإنجليزية\n'
                  '2- اللغة الألمانية\n'
                  '3- اللغة التركية\n',
                  style: TextStyle(
                    color: Colors.black, // لون النص أبيض
                    fontWeight: FontWeight.bold, // خط سميك
                    fontSize: 25, // حجم الخط
                  ),
                  textAlign: TextAlign.right, // محاذاة النص إلى اليمين
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}


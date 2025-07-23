import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final String studentName;
  final String imagePath;

  const HomeScreen({
    super.key,
    required this.studentName,
    required this.imagePath,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    // هنا ممكن تضيفي التنقل الفعلي لكل صفحة
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF9F9F9),
      appBar: AppBar(
        backgroundColor: const Color(0xff1380A5),
        elevation: 0,
        title: const Text(
          "الصفحة الرئيسية",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),

      // ✅ القائمة الجانبية
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Color(0xff1380A5),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage(widget.imagePath),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    widget.studentName,
                    style: const TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("الرئيسية"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.check_circle_outline),
              title: const Text("الحضور"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.book),
              title: const Text("الدروس"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text("تسجيل الخروج"),
              onTap: () {
                Navigator.pop(context); // Close drawer
                Navigator.pop(context); // Back to login
              },
            ),
          ],
        ),
      ),

      // ✅ الـ body فيه ListView
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(widget.imagePath),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "مرحباً، ${widget.studentName}",
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff1380A5),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              "محتويات الطالب:",
              style: TextStyle(
                fontSize: 20,
                color: Color(0xff1380A5),
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 10),
            ListTile(
              leading: const Icon(Icons.book),
              title: const Text("الدروس الحالية"),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.access_time),
              title: const Text("جدول الحصص"),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.grade),
              title: const Text("الدرجات"),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.message),
              title: const Text("الرسائل"),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),
          ],
        ),
      ),

      // ✅ الـ Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: const Color(0xff1380A5),
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'الرئيسية',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.check_circle),
            label: 'الحضور',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'الدروس',
          ),
        ],
      ),
    );
  }
}

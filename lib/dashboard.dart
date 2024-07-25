import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: [
            DashboardItem(
              icon: Icons.person,
              title: 'Profile',
              onTap: () {
                // Aksi ketika item di-tap
            ),
            DashboardItem(
              icon: Icons.message,
              title: 'Messages',
              onTap: () {
                // Aksi ketika item di-tap
              },
            ),
            DashboardItem(
              icon: Icons.settings,
              title: 'Settings',
              onTap: () {
                // Aksi ketika item di-tap
              },
            ),
            DashboardItem(
              icon: Icons.notifications,
              title: 'Notifications',
              onTap: () {
                // Aksi ketika item di-tap
              },
            ),
          ],
        ),
      ),
    );
  }
}

class DashboardItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final Function onTap;

  DashboardItem({required this.icon, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Card(
        elevation: 2.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                icon,
                size: 50.0,
                color: Colors.blue,
              ),
              SizedBox(height: 10.0),
              Text(
                title,
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

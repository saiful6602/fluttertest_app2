import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../auth_service.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final User? user = FirebaseAuth.instance.currentUser;
    final AuthService authService = AuthService();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            onPressed: () async {
              await authService.signOut();
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
            padding: EdgeInsets.zero,
            children: [
              // Drawer Header
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.teal),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                backgroundImage: NetworkImage(user!.photoURL!),
                radius: 40,
              ),
                    SizedBox(height: 10),
                    Text(
              'Hello, ${user?.displayName ?? user?.email ?? "User"}',
              style: const TextStyle(fontSize: 20),
            ),
                  ],
                ),
              ),

              // Drawer Items
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Profile'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Divider(),
             ListTile(
             leading: const Icon(Icons.logout),
             title: const Text('Logout'),
             onTap: () async {
               await authService.signOut();
             // Optionally close the drawer after logout
             Navigator.pop(context);
                  },
              ),

            ],
          ),
        ),
        
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (user?.photoURL != null)
              CircleAvatar(
                backgroundImage: NetworkImage(user!.photoURL!),
                radius: 40,
              ),
            const SizedBox(height: 16),
            Text(
              'Hello, ${user?.displayName ?? user?.email ?? "User"}',
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}

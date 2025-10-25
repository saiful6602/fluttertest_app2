import 'package:flutter/material.dart';
import 'package:islamic_app/screens/quran_screen.dart';
import 'package:islamic_app/screens/routine_screen.dart';
import 'package:islamic_app/screens/zakat_calculator_screen.dart';
import 'package:islamic_app/auth_service.dart';
import 'package:islamic_app/utils/app_assets.dart';
import 'package:islamic_app/widgets/feature_button.dart';
import 'package:islamic_app/widgets/prayer_time_card.dart';
import 'package:islamic_app/widgets/progress_indicator_card.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context, listen: false);
    final user = authService.currentUser; // safely access user info

    return Scaffold(
      appBar: AppBar(
  backgroundColor: Colors.teal,
  elevation: 0,
  title: const Text(
    '11:56',
    style: TextStyle(
      color: Colors.white, // ✅ title color white
    ),
  ),
  actions: [
    IconButton(
      onPressed: () {},
      icon: const Icon(
        Icons.notifications_none_outlined,
        color: Colors.white, // ✅ icon color white
      ),
    ),
    IconButton(
      onPressed: () async {
        await authService.signOut();
      },
      icon: const Icon(
        Icons.logout,
        color: Colors.white, // ✅ icon color white
      ),
    ),
  ],
),

      // ✅ Drawer Added Here
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            // Drawer Header
            DrawerHeader(
              decoration: const BoxDecoration(color: Colors.teal),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundImage: user?.photoURL != null
                        ? NetworkImage(user!.photoURL!)
                        : const AssetImage('assets/images/default_user.png')
                            as ImageProvider,
                    radius: 40,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Hello, ${user?.displayName ?? user?.email ?? "User"}',
                    style: const TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ],
              ),
            ),

            // Drawer Items
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Profile'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Logout'),
              onTap: () async {
                await authService.signOut();
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),

      // ✅ Replaced backgroundColor with a decorated Container
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.teal,
        ),
        child: Column(
          children: [
            const PrayerTimeCard(),
            const SizedBox(height: 20),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            FeatureButton(
                              iconPath: AppAssets.routineIcon,
                              label: 'Routine',
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const RoutineScreen()),
                                );
                              },
                            ),
                            FeatureButton(
                              iconPath: AppAssets.quranIcon,
                              label: 'Quran',
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const QuranScreen()),
                                );
                              },
                            ),
                            FeatureButton(
                              iconPath: AppAssets.mosqueIcon,
                              label: 'Mosque',
                              onTap: () {},
                            ),
                            FeatureButton(
                              iconPath: AppAssets.donationIcon,
                              label: 'Donation',
                              onTap: () {},
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            FeatureButton(
                              iconPath: AppAssets.adzanIcon,
                              label: 'Adzan',
                              onTap: () {},
                            ),
                            FeatureButton(
                              iconPath: AppAssets.dailyDuasIcon,
                              label: 'Daily Duas',
                              onTap: () {},
                            ),
                            FeatureButton(
                              iconPath: AppAssets.zakatIcon,
                              label: 'Zakat',
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ZakatCalculatorScreen()),
                                );
                              },
                            ),
                            FeatureButton(
                              iconPath: AppAssets.calendarIcon,
                              label: 'Calendar',
                              onTap: () {},
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
                        const Text(
                          'Record your good habits',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 20),
                        const ProgressIndicatorCard(),
                        const SizedBox(height: 20),
                        ...[
                          "Dhuha Prayer",
                          "Dzuhr Prayer",
                          "Asr Prayer",
                          "Magrib Prayer",
                          "Isha Prayer"
                        ]
                            .map((prayer) => CheckboxListTile(
                                  title: Text(prayer),
                                  value: false,
                                  onChanged: (val) {},
                                  controlAffinity:
                                      ListTileControlAffinity.leading,
                                ))
                            .toList(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

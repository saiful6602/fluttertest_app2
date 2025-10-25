// lib/screens/quran_screen.dart

import 'package:flutter/material.dart';
import 'package:islamic_app/screens/surah_detail_screen.dart'; 

// 1. Surah Data Model (Remains the same)
class Surah {
  final int number;
  final String englishName;
  final String arabicName;
  final String revelationType;
  final int ayahCount;

  const Surah({
    required this.number,
    required this.englishName,
    required this.arabicName,
    required this.revelationType,
    required this.ayahCount,
  });
}

// 2. Complete List of the 114 Surahs (Remains the same)
const List<Surah> quranData = [
  // 1-10
  Surah(number: 1, englishName: 'Al-Fatiha', arabicName: 'الفاتحة', revelationType: 'Meccan', ayahCount: 7),
  Surah(number: 2, englishName: 'Al-Baqarah', arabicName: 'البقرة', revelationType: 'Medinan', ayahCount: 286),
  Surah(number: 3, englishName: 'Al-Imran', arabicName: 'آل عمران', revelationType: 'Medinan', ayahCount: 200),
  Surah(number: 4, englishName: 'An-Nisa', arabicName: 'النساء', revelationType: 'Medinan', ayahCount: 176),
  Surah(number: 5, englishName: 'Al-Ma\'idah', arabicName: 'المائدة', revelationType: 'Medinan', ayahCount: 120),
  Surah(number: 6, englishName: 'Al-An\'am', arabicName: 'الأنعام', revelationType: 'Meccan', ayahCount: 165),
  Surah(number: 7, englishName: 'Al-A\'raf', arabicName: 'الأعراف', revelationType: 'Meccan', ayahCount: 206),
  Surah(number: 8, englishName: 'Al-Anfal', arabicName: 'الأنفال', revelationType: 'Medinan', ayahCount: 75),
  Surah(number: 9, englishName: 'At-Tawbah', arabicName: 'التوبة', revelationType: 'Medinan', ayahCount: 129),
  Surah(number: 10, englishName: 'Yunus', arabicName: 'يونس', revelationType: 'Meccan', ayahCount: 109),

  // 11-20
  Surah(number: 11, englishName: 'Hud', arabicName: 'هود', revelationType: 'Meccan', ayahCount: 123),
  Surah(number: 12, englishName: 'Yusuf', arabicName: 'يوسف', revelationType: 'Meccan', ayahCount: 111),
  Surah(number: 13, englishName: 'Ar-Ra\'d', arabicName: 'الرعد', revelationType: 'Medinan', ayahCount: 43),
  Surah(number: 14, englishName: 'Ibrahim', arabicName: 'إبراهيم', revelationType: 'Meccan', ayahCount: 52),
  Surah(number: 15, englishName: 'Al-Hijr', arabicName: 'الحجر', revelationType: 'Meccan', ayahCount: 99),
  Surah(number: 16, englishName: 'An-Nahl', arabicName: 'النحل', revelationType: 'Meccan', ayahCount: 128),
  Surah(number: 17, englishName: 'Al-Isra', arabicName: 'الإسراء', revelationType: 'Meccan', ayahCount: 111),
  Surah(number: 18, englishName: 'Al-Kahf', arabicName: 'الكهف', revelationType: 'Meccan', ayahCount: 110),
  Surah(number: 19, englishName: 'Maryam', arabicName: 'مريم', revelationType: 'Meccan', ayahCount: 98),
  Surah(number: 20, englishName: 'Taha', arabicName: 'طه', revelationType: 'Meccan', ayahCount: 135),

  // 21-30
  Surah(number: 21, englishName: 'Al-Anbiya', arabicName: 'الأنبياء', revelationType: 'Meccan', ayahCount: 112),
  Surah(number: 22, englishName: 'Al-Hajj', arabicName: 'الحج', revelationType: 'Medinan', ayahCount: 78),
  Surah(number: 23, englishName: 'Al-Mu\'minun', arabicName: 'المؤمنون', revelationType: 'Meccan', ayahCount: 118),
  Surah(number: 24, englishName: 'An-Nur', arabicName: 'النور', revelationType: 'Medinan', ayahCount: 64),
  Surah(number: 25, englishName: 'Al-Furqan', arabicName: 'الفرقان', revelationType: 'Meccan', ayahCount: 77),
  Surah(number: 26, englishName: 'Ash-Shu\'ara', arabicName: 'الشعراء', revelationType: 'Meccan', ayahCount: 227),
  Surah(number: 27, englishName: 'An-Naml', arabicName: 'النمل', revelationType: 'Meccan', ayahCount: 93),
  Surah(number: 28, englishName: 'Al-Qasas', arabicName: 'القصص', revelationType: 'Meccan', ayahCount: 88),
  Surah(number: 29, englishName: 'Al-Ankabut', arabicName: 'العنكبوت', revelationType: 'Meccan', ayahCount: 69),
  Surah(number: 30, englishName: 'Ar-Rum', arabicName: 'الروم', revelationType: 'Meccan', ayahCount: 60),

  // 31-40
  Surah(number: 31, englishName: 'Luqman', arabicName: 'لقمان', revelationType: 'Meccan', ayahCount: 34),
  Surah(number: 32, englishName: 'As-Sajdah', arabicName: 'السجدة', revelationType: 'Meccan', ayahCount: 30),
  Surah(number: 33, englishName: 'Al-Ahzab', arabicName: 'الأحزاب', revelationType: 'Medinan', ayahCount: 73),
  Surah(number: 34, englishName: 'Saba', arabicName: 'سبأ', revelationType: 'Meccan', ayahCount: 54),
  Surah(number: 35, englishName: 'Fatir', arabicName: 'فاطر', revelationType: 'Meccan', ayahCount: 45),
  Surah(number: 36, englishName: 'Ya-Sin', arabicName: 'يس', revelationType: 'Meccan', ayahCount: 83),
  Surah(number: 37, englishName: 'As-Saffat', arabicName: 'الصافات', revelationType: 'Meccan', ayahCount: 182),
  Surah(number: 38, englishName: 'Sad', arabicName: 'ص', revelationType: 'Meccan', ayahCount: 88),
  Surah(number: 39, englishName: 'Az-Zumar', arabicName: 'الزمر', revelationType: 'Meccan', ayahCount: 75),
  Surah(number: 40, englishName: 'Ghafir', arabicName: 'غافر', revelationType: 'Meccan', ayahCount: 85),

  // 41-50
  Surah(number: 41, englishName: 'Fussilat', arabicName: 'فصلت', revelationType: 'Meccan', ayahCount: 54),
  Surah(number: 42, englishName: 'Ash-Shura', arabicName: 'الشورى', revelationType: 'Meccan', ayahCount: 53),
  Surah(number: 43, englishName: 'Az-Zukhruf', arabicName: 'الزخرف', revelationType: 'Meccan', ayahCount: 89),
  Surah(number: 44, englishName: 'Ad-Dukhan', arabicName: 'الدخان', revelationType: 'Meccan', ayahCount: 59),
  Surah(number: 45, englishName: 'Al-Jathiyah', arabicName: 'الجاثية', revelationType: 'Meccan', ayahCount: 37),
  Surah(number: 46, englishName: 'Al-Ahqaf', arabicName: 'الأحقاف', revelationType: 'Meccan', ayahCount: 35),
  Surah(number: 47, englishName: 'Muhammad', arabicName: 'محمد', revelationType: 'Medinan', ayahCount: 38),
  Surah(number: 48, englishName: 'Al-Fath', arabicName: 'الفتح', revelationType: 'Medinan', ayahCount: 29),
  Surah(number: 49, englishName: 'Al-Hujurat', arabicName: 'الحجرات', revelationType: 'Medinan', ayahCount: 18),
  Surah(number: 50, englishName: 'Qaf', arabicName: 'ق', revelationType: 'Meccan', ayahCount: 45),

  // 51-60
  Surah(number: 51, englishName: 'Adh-Dhariyat', arabicName: 'الذاريات', revelationType: 'Meccan', ayahCount: 60),
  Surah(number: 52, englishName: 'At-Tur', arabicName: 'الطور', revelationType: 'Meccan', ayahCount: 49),
  Surah(number: 53, englishName: 'An-Najm', arabicName: 'النجم', revelationType: 'Meccan', ayahCount: 62),
  Surah(number: 54, englishName: 'Al-Qamar', arabicName: 'القمر', revelationType: 'Meccan', ayahCount: 55),
  Surah(number: 55, englishName: 'Ar-Rahman', arabicName: 'الرحمن', revelationType: 'Medinan', ayahCount: 78),
  Surah(number: 56, englishName: 'Al-Waqi\'ah', arabicName: 'الواقعة', revelationType: 'Meccan', ayahCount: 96),
  Surah(number: 57, englishName: 'Al-Hadid', arabicName: 'الحديد', revelationType: 'Medinan', ayahCount: 29),
  Surah(number: 58, englishName: 'Al-Mujadila', arabicName: 'المجادلة', revelationType: 'Medinan', ayahCount: 22),
  Surah(number: 59, englishName: 'Al-Hashr', arabicName: 'الحشر', revelationType: 'Medinan', ayahCount: 24),
  Surah(number: 60, englishName: 'Al-Mumtahanah', arabicName: 'الممتحنة', revelationType: 'Medinan', ayahCount: 13),

  // 61-70
  Surah(number: 61, englishName: 'As-Saff', arabicName: 'الصف', revelationType: 'Medinan', ayahCount: 14),
  Surah(number: 62, englishName: 'Al-Jumu\'ah', arabicName: 'الجمعة', revelationType: 'Medinan', ayahCount: 11),
  Surah(number: 63, englishName: 'Al-Munafiqun', arabicName: 'المنافقون', revelationType: 'Medinan', ayahCount: 11),
  Surah(number: 64, englishName: 'At-Taghabun', arabicName: 'التغابن', revelationType: 'Medinan', ayahCount: 18),
  Surah(number: 65, englishName: 'At-Talaq', arabicName: 'الطلاق', revelationType: 'Medinan', ayahCount: 12),
  Surah(number: 66, englishName: 'At-Tahrim', arabicName: 'التحريم', revelationType: 'Medinan', ayahCount: 12),
  Surah(number: 67, englishName: 'Al-Mulk', arabicName: 'الملك', revelationType: 'Meccan', ayahCount: 30),
  Surah(number: 68, englishName: 'Al-Qalam', arabicName: 'القلم', revelationType: 'Meccan', ayahCount: 52),
  Surah(number: 69, englishName: 'Al-Haqqah', arabicName: 'الحاقة', revelationType: 'Meccan', ayahCount: 52),
  Surah(number: 70, englishName: 'Al-Ma\'arij', arabicName: 'المعارج', revelationType: 'Meccan', ayahCount: 44),

  // 71-80
  Surah(number: 71, englishName: 'Nuh', arabicName: 'نوح', revelationType: 'Meccan', ayahCount: 28),
  Surah(number: 72, englishName: 'Al-Jinn', arabicName: 'الجن', revelationType: 'Meccan', ayahCount: 28),
  Surah(number: 73, englishName: 'Al-Muzzammil', arabicName: 'المزمل', revelationType: 'Meccan', ayahCount: 20),
  Surah(number: 74, englishName: 'Al-Muddaththir', arabicName: 'المدثر', revelationType: 'Meccan', ayahCount: 56),
  Surah(number: 75, englishName: 'Al-Qiyamah', arabicName: 'القيامة', revelationType: 'Meccan', ayahCount: 40),
  Surah(number: 76, englishName: 'Al-Insan', arabicName: 'الإنسان', revelationType: 'Medinan', ayahCount: 31),
  Surah(number: 77, englishName: 'Al-Mursalat', arabicName: 'المرسلات', revelationType: 'Meccan', ayahCount: 50),
  Surah(number: 78, englishName: 'An-Naba', arabicName: 'النبأ', revelationType: 'Meccan', ayahCount: 40),
  Surah(number: 79, englishName: 'An-Nazi\'at', arabicName: 'النازعات', revelationType: 'Meccan', ayahCount: 46),
  Surah(number: 80, englishName: 'Abasa', arabicName: 'عبس', revelationType: 'Meccan', ayahCount: 42),

  // 81-90
  Surah(number: 81, englishName: 'At-Takwir', arabicName: 'التكوير', revelationType: 'Meccan', ayahCount: 29),
  Surah(number: 82, englishName: 'Al-Infitar', arabicName: 'الإنفطار', revelationType: 'Meccan', ayahCount: 19),
  Surah(number: 83, englishName: 'Al-Mutaffifin', arabicName: 'المطففين', revelationType: 'Meccan', ayahCount: 36),
  Surah(number: 84, englishName: 'Al-Inshiqaq', arabicName: 'الإنشقاق', revelationType: 'Meccan', ayahCount: 25),
  Surah(number: 85, englishName: 'Al-Buruj', arabicName: 'البروج', revelationType: 'Meccan', ayahCount: 22),
  Surah(number: 86, englishName: 'At-Tariq', arabicName: 'الطارق', revelationType: 'Meccan', ayahCount: 17),
  Surah(number: 87, englishName: 'Al-A\'la', arabicName: 'الأعلى', revelationType: 'Meccan', ayahCount: 19),
  Surah(number: 88, englishName: 'Al-Ghashiyah', arabicName: 'الغاشية', revelationType: 'Meccan', ayahCount: 26),
  Surah(number: 89, englishName: 'Al-Fajr', arabicName: 'الفجر', revelationType: 'Meccan', ayahCount: 30),
  Surah(number: 90, englishName: 'Al-Balad', arabicName: 'البلد', revelationType: 'Meccan', ayahCount: 20),

  // 91-100
  Surah(number: 91, englishName: 'Ash-Shams', arabicName: 'الشمس', revelationType: 'Meccan', ayahCount: 15),
  Surah(number: 92, englishName: 'Al-Lail', arabicName: 'الليل', revelationType: 'Meccan', ayahCount: 21),
  Surah(number: 93, englishName: 'Ad-Duha', arabicName: 'الضحى', revelationType: 'Meccan', ayahCount: 11),
  Surah(number: 94, englishName: 'Ash-Sharh', arabicName: 'الشرح', revelationType: 'Meccan', ayahCount: 8),
  Surah(number: 95, englishName: 'At-Tin', arabicName: 'التين', revelationType: 'Meccan', ayahCount: 8),
  Surah(number: 96, englishName: 'Al-Alaq', arabicName: 'العلق', revelationType: 'Meccan', ayahCount: 19),
  Surah(number: 97, englishName: 'Al-Qadr', arabicName: 'القدر', revelationType: 'Meccan', ayahCount: 5),
  Surah(number: 98, englishName: 'Al-Bayyinah', arabicName: 'البينة', revelationType: 'Medinan', ayahCount: 8),
  Surah(number: 99, englishName: 'Az-Zalzalah', arabicName: 'الزلزلة', revelationType: 'Medinan', ayahCount: 8),
  Surah(number: 100, englishName: 'Al-Adiyat', arabicName: 'العاديات', revelationType: 'Meccan', ayahCount: 11),

  // 101-114
  Surah(number: 101, englishName: 'Al-Qari\'ah', arabicName: 'القارعة', revelationType: 'Meccan', ayahCount: 11),
  Surah(number: 102, englishName: 'At-Takathur', arabicName: 'التكاثر', revelationType: 'Meccan', ayahCount: 8),
  Surah(number: 103, englishName: 'Al-Asr', arabicName: 'العصر', revelationType: 'Meccan', ayahCount: 3),
  Surah(number: 104, englishName: 'Al-Humazah', arabicName: 'الهمزة', revelationType: 'Meccan', ayahCount: 9),
  Surah(number: 105, englishName: 'Al-Fil', arabicName: 'الفيل', revelationType: 'Meccan', ayahCount: 5),
  Surah(number: 106, englishName: 'Quraish', arabicName: 'قريش', revelationType: 'Meccan', ayahCount: 4),
  Surah(number: 107, englishName: 'Al-Ma\'un', arabicName: 'الماعون', revelationType: 'Meccan', ayahCount: 7),
  Surah(number: 108, englishName: 'Al-Kawthar', arabicName: 'الكوثر', revelationType: 'Meccan', ayahCount: 3),
  Surah(number: 109, englishName: 'Al-Kafirun', arabicName: 'الكافرون', revelationType: 'Meccan', ayahCount: 6),
  Surah(number: 110, englishName: 'An-Nasr', arabicName: 'النصر', revelationType: 'Medinan', ayahCount: 3),
  Surah(number: 111, englishName: 'Al-Masad', arabicName: 'المسد', revelationType: 'Meccan', ayahCount: 5),
  Surah(number: 112, englishName: 'Al-Ikhlas', arabicName: 'الإخلاص', revelationType: 'Meccan', ayahCount: 4),
  Surah(number: 113, englishName: 'Al-Falaq', arabicName: 'الفلق', revelationType: 'Meccan', ayahCount: 5),
  Surah(number: 114, englishName: 'An-Nas', arabicName: 'الناس', revelationType: 'Meccan', ayahCount: 6),
];


// 3. Convert to StatefulWidget to manage search state
class QuranScreen extends StatefulWidget {
  const QuranScreen({super.key});

  @override
  State<QuranScreen> createState() => _QuranScreenState();
}

class _QuranScreenState extends State<QuranScreen> {
  // Controller for the search input field
  final TextEditingController _searchController = TextEditingController();
  // List that holds the currently filtered Surahs (initially all Surahs)
  List<Surah> _filteredSurahs = quranData;

  @override
  void initState() {
    super.initState();
    // Add a listener to the text controller to update the search results dynamically
    _searchController.addListener(_filterSurahs);
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  // Method to filter the Surah list based on the search query
  void _filterSurahs() {
    final query = _searchController.text.toLowerCase();
    
    setState(() {
      if (query.isEmpty) {
        // If the query is empty, show the full list
        _filteredSurahs = quranData;
      } else {
        // Filter the list where the English or Arabic name contains the query
        _filteredSurahs = quranData.where((surah) {
          return surah.englishName.toLowerCase().contains(query) ||
                 surah.arabicName.contains(query); // Arabic search is case sensitive
        }).toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Quran',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.teal,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Column(
        children: [
          // 4. Search Bar Implementation (in a Padding container)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search Surah by name ...',
                prefixIcon: const Icon(Icons.search, color: Colors.teal),
                suffixIcon: _searchController.text.isNotEmpty
                    ? IconButton(
                        icon: const Icon(Icons.clear),
                        onPressed: () {
                          _searchController.clear();
                          // Manually call filter to reset the list after clearing
                          _filterSurahs(); 
                        },
                      )
                    : null,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: Colors.teal),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: Colors.teal, width: 2),
                ),
              ),
              onChanged: (value) => _filterSurahs(), // Also trigger on text change
            ),
          ),
          
          // 5. Surah List (using filtered list)
          Expanded(
            child: _filteredSurahs.isEmpty
                ? const Center(
                    child: Text('No Surahs found matching your search.', style: TextStyle(color: Colors.grey)),
                  )
                : ListView.builder(
                    // Use the filtered list here
                    itemCount: _filteredSurahs.length, 
                    itemBuilder: (context, index) {
                      final surah = _filteredSurahs[index]; // Use the filtered item
                      
                      return Card(
                        elevation: 2,
                        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.teal,
                            child: Text(
                              '${surah.number}',
                              style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                            ),
                          ),
                          title: Text(
                            surah.englishName,
                            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          subtitle: Text(
                              '${surah.revelationType} | ${surah.ayahCount} Ayahs (${surah.arabicName})'), 
                              
                          trailing: const Icon(Icons.arrow_forward_ios, color: Colors.teal, size: 18),
                          
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SurahDetailScreen(
                                    surahName: surah.englishName,
                                    surahNumber: surah.number,
                                ),
                              ),
                            );
                          },
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
// lib/screens/surah_detail_screen.dart

import 'package:flutter/material.dart';
import 'package:islamic_app/models/ayah.dart'; 

class SurahDetailScreen extends StatelessWidget {
  final String surahName;
  final int surahNumber;

  const SurahDetailScreen({
    super.key,
    required this.surahName,
    required this.surahNumber,
  });

  // 🔴 Full Surah Al-Fatiha (7 Ayahs) Data 🔴
  // This data will ONLY be used if surahNumber == 1
  final List<Ayah> alFatihaAyahs = const [
    // Ayah 1: Bismillah
    Ayah(
      surahNumber: 1,
      ayahNumber: 1,
      arabicText: 'بِسْمِ ٱللَّهِ ٱلرَّحْمَٰنِ ٱلرَّحِيمِ',
      englishTranslation: 'In the name of Allah, the Entirely Merciful, the Especially Merciful.',
      banglaTranslation: 'পরম করুণাময়, অসীম দয়ালু আল্লাহর নামে।',
      banglaExplanation: 'এই আয়াতে আল্লাহ্‌র গুণবাচক নামগুলির মধ্যে সর্বশ্রেষ্ঠ দুটি নাম উল্লেখ করা হয়েছে, যা তাঁর দয়া ও করুণাকে নির্দেশ করে। এর মাধ্যমে প্রতিটি কাজের সূচনাতে আল্লাহ্‌র সাহায্য কামনা করা হয় এবং তাঁর স্মরণকে অগ্রাধিকার দেওয়া হয়।',
      transliteration: 'Bismi Allahi alrrahmani alrraheem',
    ),
    // Ayah 2: Alhamdu
    Ayah(
      surahNumber: 1,
      ayahNumber: 2,
      arabicText: 'ٱلْحَمْدُ لِلَّهِ رَبِّ ٱلْعَٰلَمِينَ',
      englishTranslation: 'All praise is due to Allah, Lord of the worlds.',
      banglaTranslation: 'সকল প্রশংসা জগৎসমূহের প্রতিপালক আল্লাহর।',
      banglaExplanation: '"আল-হামদ" শব্দটি কেবল কৃতজ্ঞতা নয়, বরং মহিমা ও গুণের বর্ণনাকেও বোঝায়। এটি আল্লাহর একক প্রশংসা এবং প্রতিপালকত্বের স্বীকৃতি। তিনি সকল জগতের একমাত্র সৃষ্টিকর্তা ও রক্ষক।',
      transliteration: 'Alhamdu lillahi rabbi alAAalameena',
    ),
    // Ayah 3: Ar-Rahman
    Ayah(
      surahNumber: 1,
      ayahNumber: 3,
      arabicText: 'ٱلرَّحْمَٰنِ ٱلرَّحِيمِ',
      englishTranslation: 'The Entirely Merciful, the Especially Merciful.',
      banglaTranslation: 'যিনি পরম করুণাময়, অতি দয়ালু।',
      banglaExplanation: 'এই আয়াতটি আল্লাহর বিশেষ দুটি গুণকে পুনরায় জোরদার করে। "আর-রাহমান" (পরম করুণাময়) তাঁর ব্যাপক করুণা যা সমস্ত সৃষ্টিকে পরিবেষ্টন করে, এবং "আর-রাহীম" (অতি দয়ালু) হলো তাঁর সেই বিশেষ করুণা যা কেবল মুমিনদের জন্য নির্ধারিত।',
      transliteration: 'Alrrahmani alrraheem',
    ),
    // Ayah 4: Maliki yawmid-din
    Ayah(
      surahNumber: 1,
      ayahNumber: 4,
      arabicText: 'مَٰلِكِ يَوْمِ ٱلدِّينِ',
      englishTranslation: 'Sovereign of the Day of Recompense.',
      banglaTranslation: 'বিচার দিনের মালিক।',
      banglaExplanation: 'এই আয়াতটি আখেরাত বা কর্মফলের দিনের প্রতি বিশ্বাসকে দৃঢ় করে। আল্লাহ্‌ হচ্ছেন সেই দিনের একমাত্র অধিপতি, যখন সকল মানুষের কর্মের হিসাব নেওয়া হবে। এটি মানুষকে দুনিয়াতে দায়িত্বশীল ও সতর্ক হতে অনুপ্রাণিত করে।',
      transliteration: 'Maliki yawmi alddeeni',
    ),
    // Ayah 5: Iyyaka na'budu
    Ayah(
      surahNumber: 1,
      ayahNumber: 5,
      arabicText: 'إِيَّاكَ نَعْبُدُ وَإِيَّاكَ نَسْتَعِينُ',
      englishTranslation: 'It is You we worship and You we ask for help.',
      banglaTranslation: 'আমরা শুধু আপনারই ইবাদত করি এবং শুধু আপনারই সাহায্য চাই।',
      banglaExplanation: 'এটি ইবাদতের ভিত্তি। "ইবাদত" (উপাসনা) এবং "ইস্তিয়ানা" (সাহায্য চাওয়া) — এই দুটিকে কেবল আল্লাহর জন্য নির্দিষ্ট করা হয়েছে। এটি একত্ববাদ (তাওহীদ) এর মূলনীতি।',
      transliteration: 'Iyyaka naAAbudu wa-iyyaka nastaAAeenu',
    ),
    // Ayah 6: Ihdinas-sirat
    Ayah(
      surahNumber: 1,
      ayahNumber: 6,
      arabicText: 'ٱهْدِنَا ٱلصِّرَٰطَ ٱلْمُسْتَقِيمَ',
      englishTranslation: 'Guide us to the straight path.',
      banglaTranslation: 'আমাদেরকে সরল পথ দেখান।',
      banglaExplanation: '"সিরাতুল মুস্তাকীম" (সরল পথ) হলো এমন পথ যা আল্লাহ্‌র সন্তুষ্টির দিকে নিয়ে যায়। এই পথের নির্দেশনা, জ্ঞান এবং সেই পথে চলার শক্তি প্রার্থনা করা হয়। এটি বান্দার পক্ষ থেকে আল্লাহ্‌র কাছে সবচেয়ে গুরুত্বপূর্ণ চাওয়া।',
      transliteration: 'Ihdina alssirata almustaqeema',
    ),
    // Ayah 7: Siratal-lazina
    Ayah(
      surahNumber: 1,
      ayahNumber: 7,
      arabicText: 'صِرَٰطَ ٱلَّذِينَ أَنْعَمْتَ عَلَيْهِمْ غَيْرِ ٱلْمَغْضُوبِ عَلَيْهِمْ وَلَا ٱلضَّآلِّينَ',
      englishTranslation: 'The path of those upon whom You have bestowed favor, not of those who have evoked [Your] anger or of those who are astray.',
      banglaTranslation: 'তাদের পথ, যাদেরকে আপনি নেয়ামত দিয়েছেন; তাদের পথ নয়, যারা আপনার গজবপ্রাপ্ত এবং পথভ্রষ্ট।',
      banglaExplanation: 'এই আয়াত সরল পথকে সুস্পষ্ট করে। নেয়ামতপ্রাপ্তরা হলেন নবী, সিদ্দীক, শহীদ ও সালেহীনগণ। আর গজবপ্রাপ্ত (যেমন ইহুদিরা) এবং পথভ্রষ্ট (যেমন খ্রিষ্টানরা) থেকে দূরে থাকার প্রার্থনা করা হয়, যারা জেনে-বুঝে বা না জেনে সত্য থেকে বিচ্যুত হয়েছে।',
      transliteration: 'Sirata allatheena anAAamta AAalayhim ghayri almaghdoobi AAalayhim wala alddalleena',
    ),
  ];
  
  // Get the Ayah list dynamically based on the Surah number
  List<Ayah> _getCurrentSurahAyahs() {
    if (surahNumber == 1) {
      // If it is Surah 1 (Al-Fatiha), return the implemented data
      return alFatihaAyahs;
    } else {
      // If it is any other Surah, we return an EMPTY list and handle the display in the build method
      return []; 
    }
  }


  // Function to show the detailed explanation/tafsir in a dialog
  void _showBanglaTafsir(BuildContext context, Ayah ayah) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          title: Row(
            children: [
              const Icon(Icons.menu_book, color: Colors.teal),
              const SizedBox(width: 10),
              Text(
                'তাফসীর (Ayah ${ayah.ayahNumber})',
                style: const TextStyle(color: Colors.teal, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(
                  ayah.banglaExplanation,
                  style: const TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 15),
                const Text(
                  'সূত্র: প্রাথমিক তাফসীর গ্রন্থসমূহ', 
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('বন্ধ করুন', style: TextStyle(color: Colors.teal)),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final currentAyahs = _getCurrentSurahAyahs(); // Fetch the relevant Ayahs

    return Scaffold(
      appBar: AppBar(
        title: Text(
          '$surahNumber. $surahName',
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.teal,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      
      // Conditional body content based on whether the Surah is implemented
      body: currentAyahs.isEmpty
          ? Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.menu_book, size: 50, color: Colors.teal),
                    const SizedBox(height: 10),
                    Text(
                      '$surahName (${surahNumber})',
                      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'এই সূরার সম্পূর্ণ বাংলা অনুবাদ ও তাফসীর শীঘ্রই যোগ করা হবে।\nঅসুবিধার জন্য আমরা ক্ষমাপ্রার্থী।', // Bangla: "The complete Bangla translation and Tafsir of this Surah will be added soon. We apologize for the inconvenience."
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            )
          : ListView.builder(
              itemCount: currentAyahs.length,
              itemBuilder: (context, index) {
                final ayah = currentAyahs[index];
                return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      // Ayah Number
                      Text(
                        'Ayah ${ayah.ayahNumber}:',
                        style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.teal),
                      ),
                      const SizedBox(height: 8),

                      // Arabic Text
                      Text(
                        ayah.arabicText,
                        textAlign: TextAlign.right,
                        style: const TextStyle(
                          fontFamily: 'ArabicFont', 
                          fontSize: 24,
                          height: 2.0,
                        ),
                      ),
                      const Divider(),

                      // Bangla Translation
                      Text(
                        'Bangla: ${ayah.banglaTranslation}',
                        style: const TextStyle(fontSize: 14, color: Colors.black87),
                      ),
                      const SizedBox(height: 5),

                      // English Translation
                      Text(
                        'English: ${ayah.englishTranslation}',
                        style: const TextStyle(fontSize: 14, fontStyle: FontStyle.italic),
                      ),
                      const SizedBox(height: 10),

                      // Reference Icon
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton.icon(
                          icon: const Icon(Icons.info_outline, size: 18, color: Colors.teal),
                          label: const Text(
                            'তাফসীর',
                            style: TextStyle(color: Colors.teal, fontSize: 13),
                          ),
                          onPressed: () => _showBanglaTafsir(context, ayah),
                        ),
                      ),
                      
                      const SizedBox(height: 20),
                      if (index < currentAyahs.length - 1) 
                        Divider(color: Colors.grey.shade300, thickness: 5),
                    ],
                  ),
                );
              },
            ),
    );
  }
}
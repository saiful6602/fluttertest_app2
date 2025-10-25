// lib/models/ayah.dart

class Ayah {
  final int surahNumber;
  final int ayahNumber;
  
  // The original Arabic text
  final String arabicText; 
  
  // Translations
  final String englishTranslation;
  final String banglaTranslation;
  
  // ✅ NEW FIELD for Explanation/Reference
  final String banglaExplanation; 
  
  // Optional: Transliteration for reading
  final String transliteration;

  const Ayah({
    required this.surahNumber,
    required this.ayahNumber,
    required this.arabicText,
    required this.englishTranslation,
    required this.banglaTranslation,
    required this.banglaExplanation, // ✅ Must be required now
    required this.transliteration,
  });

  // Factory constructor for potential future JSON parsing
  factory Ayah.fromJson(Map<String, dynamic> json) {
    return Ayah(
      surahNumber: json['surah_number'] as int,
      ayahNumber: json['ayah_number'] as int,
      arabicText: json['arabic_text'] as String,
      englishTranslation: json['english_translation'] as String,
      banglaTranslation: json['bangla_translation'] as String,
      banglaExplanation: json['bangla_explanation'] as String, // ✅ Added to parsing
      transliteration: json['transliteration'] as String,
    );
  }
}
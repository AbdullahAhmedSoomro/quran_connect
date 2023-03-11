import 'package:flutter/material.dart';
import 'package:quran_connect/presentation/shared/app_bar.dart';
import 'package:quran_connect/presentation/shared/card.dart';

class EmotionScreen extends StatelessWidget {
  const EmotionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PrimaryAppBar(
        imagePath: 'assets/images/home_background.png',
        prayerTimeNow: 'Zuhar',
        upcomingPrayerTime: 'Asar',
        centerTitle: 'Emotions',
        englishDateTime: DateTime.now(),
        hijriDateTime: DateTime.now(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: const [
            SizedBox(height: 30),
            PrimaryTile(title: 'Ayahs', imagePath: 'assets/images/quran.png'),
            SizedBox(height: 30),
            PrimaryTile(title: 'Duas', imagePath: 'assets/images/quran.png'),
            SizedBox(height: 30),
            PrimaryTile(title: 'Hadith', imagePath: 'assets/images/quran.png'),
            SizedBox(height: 30),
            PrimaryTile(title: 'Surah', imagePath: 'assets/images/quran.png'),
          ],
        ),
      ),
    );
  }
}

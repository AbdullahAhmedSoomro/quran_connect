import 'package:flutter/material.dart';
import 'package:quran_connect/presentation/shared/app_bar.dart';
import 'package:quran_connect/presentation/shared/card.dart';

class EmotionScreen extends StatelessWidget {
  const EmotionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PrimaryAppBar(
        imagePath: 'assets/images/home_background.png',
        prayerTimeNow: 'Zuhar',
        upcomingPrayerTime: 'Asar',
        centerTitle: 'Emotions',
        englishDateTime: DateTime.now(),
        hijriDateTime: DateTime.now(),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 30),
              const PrimaryTile(
                title: 'Surah',
                imagePath: 'assets/images/quran.png',
              ),
              const SizedBox(height: 30),
              const PrimaryTile(
                title: 'Ayahs',
                imagePath: 'assets/images/quran.png',
              ),
              const SizedBox(height: 30),
              const PrimaryTile(
                title: 'Hadith',
                imagePath: 'assets/images/hadith.png',
              ),
              const SizedBox(height: 30),
              const PrimaryTile(
                title: 'Duas',
                imagePath: 'assets/images/dua-hands.png',
              ),
              const SizedBox(height: 30),
              SizedBox(height: screenHeight * 0.129),
            ],
          ),
        ),
      ),
    );
  }
}

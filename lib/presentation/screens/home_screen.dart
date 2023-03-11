import 'package:flutter/material.dart';
import 'package:quran_connect/presentation/shared/app_bar.dart';
import 'package:quran_connect/presentation/shared/card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PrimaryAppBar(
          imagePath: 'assets/images/home_background.png',
          prayerTimeNow: 'Zuhr',
          upcomingPrayerTime: 'Asr',
          centerTitle: 'Home',
          englishDateTime: DateTime.now(),
          hijriDateTime: DateTime.now()),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const SizedBox(height: 30),
              const PrimaryCard(
                title: "Ayah",
                arabic: 'إِنَّهُ هُوَ التَّوَّابُ الرَّحِيمُ',
                english: 'Lo! He is the relenting, the Merciful',
                reference: 'Al-Baqara - 2:37',
                imagePath: 'assets/images/quran.png',
                isAyah: true,
              ),
              const SizedBox(height: 20),
              const PrimaryCard(
                title: "Hadith",
                arabic: 'خَيْرُكُمْ مَنْ تَعَلَّمَ الْقُرْآنَ وَعَلَّمَهُ',
                english:
                    "The best among you (Muslims) are those who learn the Qur'an and teach it",
                reference: 'Ref',
                imagePath: 'assets/images/hadith.png',
              ),
              const SizedBox(height: 20),
              const PrimaryCard(
                title: "Dua",
                arabic:
                    'رَبَّنَآ اِنَّنَآ اٰمَنَّا فَاغْفِرْ لَنَا ذُنُوْبَنَا وَقِنَا عَذَابَ النَّارِ',
                english:
                    "Our Lord! We have indeed believed, so forgive us our sins and save us from the punishment of the Fire.",
                reference: 'Surah Al-Imran - 3:16',
                imagePath: 'assets/images/dua-hands.png',
              ),
              SizedBox(height: screenHeight * 0.129),
            ],
          ),
        ),
      ),
    );
  }
}

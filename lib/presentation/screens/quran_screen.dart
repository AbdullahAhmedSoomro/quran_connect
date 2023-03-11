import 'package:flutter/material.dart';
import 'package:quran_connect/presentation/shared/app_bar.dart';
import 'package:quran_connect/presentation/shared/card.dart';

class QuranScreen extends StatelessWidget {
  const QuranScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PrimaryAppBar(
        imagePath: 'assets/images/home_background.png',
        prayerTimeNow: 'Zuhar',
        upcomingPrayerTime: 'Asar',
        centerTitle: 'Quran',
        englishDateTime: DateTime.now(),
        hijriDateTime: DateTime.now(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            const PrimaryTile(
              title: 'Quran',
              imagePath: 'assets/images/quran.png',
            ),
            const SizedBox(height: 30),
            Container(
              decoration: BoxDecoration(
                color: const Color(0xffDF98FA).withOpacity(0.4),
                borderRadius: BorderRadius.circular(10),
              ),
              height: screenHeight * 0.2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  PrimaryBox(
                    title: 'Sipara',
                    imagePath: 'assets/images/quran.png',
                  ),
                  PrimaryBox(
                    title: 'Surah',
                    imagePath: 'assets/images/quran.png',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:quran_connect/presentation/shared/app_bar.dart';
import 'package:quran_connect/presentation/shared/card.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({Key? key}) : super(key: key);

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  Stream<List<PrimaryBox>> get actionCards async* {
    final defaultList = [
      const PrimaryBox(
        title: 'Qiblah',
        imagePath: 'assets/images/quran.png',
      ),
      const PrimaryBox(
        title: 'Prayer Times',
        imagePath: 'assets/images/quran.png',
      ),
      const PrimaryBox(
        title: 'Husnas',
        imagePath: 'assets/images/quran.png',
      ),
      const PrimaryBox(
        title: 'Rules',
        imagePath: 'assets/images/quran.png',
      ),
    ];
    yield defaultList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PrimaryAppBar(
        imagePath: 'assets/images/home_background.png',
        prayerTimeNow: 'Zuhar',
        upcomingPrayerTime: 'Asar',
        centerTitle: 'More',
        englishDateTime: DateTime.now(),
        hijriDateTime: DateTime.now(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: CustomScrollView(
          slivers: <Widget>[
            const SliverToBoxAdapter(child: SizedBox(height: 30)),
            StreamBuilder<List<PrimaryBox>>(
              stream: actionCards,
              builder: (context, snapshot) {
                final hasData = snapshot.hasData;
                if (!hasData) {
                  return const SliverToBoxAdapter(
                      child: CircularProgressIndicator());
                }
                final actions = snapshot.data!;
                return SliverGrid(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.0,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                  ),
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      return actions[index];
                    },
                    childCount: actions.length,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

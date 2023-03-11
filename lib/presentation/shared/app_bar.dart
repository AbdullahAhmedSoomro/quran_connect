import 'package:flutter/material.dart';

class PrimaryAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String imagePath;
  final String prayerTimeNow;
  final String upcomingPrayerTime;
  final String centerTitle;
  final DateTime englishDateTime;
  final DateTime hijriDateTime;

  const PrimaryAppBar({
    Key? key,
    required this.imagePath,
    required this.prayerTimeNow,
    required this.upcomingPrayerTime,
    required this.centerTitle,
    required this.englishDateTime,
    required this.hijriDateTime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Stack(
      alignment: Alignment.center,
      children: [
        Image(
          image: AssetImage(imagePath),
          width: width,
          fit: BoxFit.fill,
        ),
        Positioned(
          top: 150,
          child: Text(
            centerTitle,
            style: const TextStyle(
              fontFamily: 'JosefinSans',
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Positioned(
          top: 70,
          left: 10,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Now',
                style: TextStyle(
                  fontFamily: 'JosefinSans',
                  color: Colors.white,
                  height: 1.4,
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                ),
              ),
              Text(
                prayerTimeNow,
                style: const TextStyle(
                  fontFamily: 'JosefinSans',
                  color: Colors.white,
                  fontSize: 18,
                  height: 1.4,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Text(
                'Upcoming',
                style: TextStyle(
                  fontFamily: 'JosefinSans',
                  color: Colors.white,
                  fontSize: 16,
                  height: 1.4,
                  fontWeight: FontWeight.w300,
                ),
              ),
              Text(
                upcomingPrayerTime,
                style: const TextStyle(
                  fontFamily: 'JosefinSans',
                  color: Colors.white,
                  fontSize: 18,
                  height: 1.4,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 70,
          right: 10,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                /// show hijri date
                hijriDateTime.day.toString(),
                style: const TextStyle(
                  fontFamily: 'JosefinSans',
                  color: Colors.white,
                  fontSize: 18,
                  height: 1.4,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                /// show hijri month name and year
                hijriDateTime.toString(),
                style: const TextStyle(
                  fontFamily: 'JosefinSans',
                  color: Colors.white,
                  fontSize: 18,
                  height: 1.4,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                /// show english dateTime like => Sat 04-03-23
                englishDateTime.day.toString(),
                style: const TextStyle(
                  fontFamily: 'JosefinSans',
                  color: Colors.white,
                  fontSize: 18,
                  height: 1.4,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize {
    return const Size.fromHeight(140);
  }
}

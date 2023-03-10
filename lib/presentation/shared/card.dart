import 'package:flutter/material.dart';

class PrimaryTile extends StatelessWidget {
  final String title;
  final String imagePath;
  final bool isQuran;

  const PrimaryTile({
    Key? key,
    required this.title,
    required this.imagePath,
    this.isQuran = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      height: screenHeight * 0.129,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color(0xffDF98FA),
            Color(0xff9055FF),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Positioned(
            top: 40,
            left: 20,
            child: Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(color: Colors.white, fontWeight: FontWeight.w500),
            ),
          ),
          Positioned(
            right: isQuran ? -20 : 0,
            bottom: isQuran ? 8 : 0,
            child: Opacity(
              opacity: isQuran ? 1 : 0.5,
              child: Image(
                image: AssetImage(imagePath),
                width: isQuran ? 150 : 100,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PrimaryCard extends StatelessWidget {
  final String title;
  final String arabic;
  final String english;
  final String reference;
  final String imagePath;
  final bool isAyah;

  const PrimaryCard({
    Key? key,
    required this.title,
    required this.arabic,
    required this.english,
    required this.reference,
    required this.imagePath,
    this.isAyah = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        height: screenHeight * 0.32,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color(0xffDF98FA),
              Color(0xff9055FF),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Positioned(
              top: 30,
              child: Text(
                '$title of The Day',
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(color: Colors.white, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.centerRight,
                    child: Text(
                      arabic,
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.01),
                  Text(
                    english,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: screenHeight * 0.01),
                  Text(
                    'Quran: $reference',
                    textAlign: TextAlign.left,
                    style: Theme.of(context).textTheme.labelLarge!.copyWith(
                        color: Colors.white, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            Positioned(
              right: -20,
              bottom: -15,
              child: Opacity(
                opacity: 0.1,
                child: isAyah
                    ? Image(
                        image: AssetImage(imagePath),
                        width: 160,
                      )
                    : ImageIcon(
                        AssetImage(imagePath),
                        size: 130,
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PrimaryBox extends StatelessWidget {
  final String title;
  final String imagePath;
  final double size;
  final bool isQuranScreen;

  const PrimaryBox({
    Key? key,
    required this.title,
    required this.imagePath,
    this.size = 50,
    this.isQuranScreen = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        height: screenHeight * 0.15,
        width: screenWidth * 0.3,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color(0xffDF98FA),
              Color(0xff9055FF),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              isQuranScreen
                  ? Image(
                      image: AssetImage(imagePath),
                      width: size,
                    )
                  : ImageIcon(
                      AssetImage(imagePath),
                      size: size,
                      color: Colors.white,
                    ),
              Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(color: Colors.white, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PrimaryButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const PrimaryButton({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        child: Container(
          height: screenHeight * 0.06,
          width: screenWidth * 0.4,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                Color(0xffDF98FA),
                Color(0xff9055FF),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(4),
          ),
          alignment: Alignment.center,
          child: Text(
            title,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}

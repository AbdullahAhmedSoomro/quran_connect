import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIndex;
  final List<BottomNavigationBarItem> items;
  final ValueChanged<int> onTap;

  const BottomNavBar({
    Key? key,
    required this.currentIndex,
    required this.items,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    final double deviceWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      top: false,
      minimum: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: Container(
        width: deviceWidth * 0.9,
        height: deviceHeight * 0.08,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 100,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Theme(
            data: ThemeData(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
            ),
            child: BottomNavigationBar(
              selectedItemColor: const Color(0xff9055FF),
              unselectedItemColor: Colors.grey,
              selectedLabelStyle: Theme.of(context).textTheme.bodyLarge,
              unselectedLabelStyle: Theme.of(context).textTheme.bodyLarge,
              backgroundColor: Colors.white,
              currentIndex: currentIndex,
              onTap: onTap,
              items: items,
            ),
          ),
        ),
      ),
    );
  }
}

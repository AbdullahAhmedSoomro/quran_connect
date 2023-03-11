import 'package:flutter/material.dart';
import 'package:quran_connect/presentation/screens/emotion_screen.dart';
import 'package:quran_connect/presentation/screens/home_screen.dart';
import 'package:quran_connect/presentation/screens/more_screen.dart';
import 'package:quran_connect/presentation/screens/quran_screen.dart';
import 'package:quran_connect/presentation/shared/bottom_nav_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late int _selectedPage;
  late final PageController pageController;

  @override
  void initState() {
    super.initState();
    _selectedPage = 0;
    pageController = PageController(initialPage: _selectedPage);
  }

  void onPageChanged(int page) {
    setState(() {
      _selectedPage = page;
    });
  }

  void onNavBarItemTapped(int page) {
    pageController.jumpToPage(page);
  }

  List<Widget> pages = [
    const HomeScreen(),
    const QuranScreen(),
    const EmotionScreen(),
    const MoreScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: PageView(
        controller: pageController,
        onPageChanged: onPageChanged,
        children: pages,
      ),
      bottomNavigationBar: BottomNavBar(
        currentIndex: _selectedPage,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/images/quran_icon.png')),
            label: 'Quran',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_outlined),
            label: 'Emotions',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_outlined),
            label: 'More',
          ),
        ],
        onTap: onNavBarItemTapped,
      ),
    );
  }
}

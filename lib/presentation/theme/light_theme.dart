import 'package:flutter/material.dart';
import 'package:quran_connect/presentation/theme/base_theme.dart';

class LightTheme extends BaseTheme {
  @override
  BackgroundTheme get backgroundTheme {
    return const BackgroundTheme(
      primaryColor: Color(0xFF4C4DFF),
      secondaryColor: Color(0xFF7B7CFF),
      tertiaryColor: Color(0xFF1F1F1F),
      quaternaryColor: Color(0xFFFFFFFF),
      quinaryColor: Color(0xFF8B8B8B),
    );
  }

  @override
  FontTheme get fontTheme {
    return FontTheme(
      heading1: const TextStyle(
        fontSize: 30,
      ),
      heading2: const TextStyle(
        fontSize: 25,
      ),
      heading3: TextStyle(
        fontSize: 20,
        height: 1.4,
        color: backgroundTheme.quinaryColor,
      ),
      body1: TextStyle(
        fontSize: 18,
        height: 1.4,
        color: backgroundTheme.quinaryColor,
      ),
      body2: TextStyle(
        fontSize: 16,
        height: 1.4,
        color: backgroundTheme.quinaryColor,
      ),
      caption: const TextStyle(
        fontSize: 14,
      ),
    );
  }

  @override
  FontFamily get fontFamily {
    return FontFamily(
      primary: 'JosefinSans',
      secondary: 'secondary',
    );
  }
}

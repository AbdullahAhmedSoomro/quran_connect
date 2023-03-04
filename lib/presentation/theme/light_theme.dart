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
    return const FontTheme(
      heading1: TextStyle(
        fontSize: 30,
      ),
      heading2: TextStyle(
        fontSize: 25,
      ),
      heading3: TextStyle(
        fontSize: 20,
      ),
      body1: TextStyle(
        fontSize: 18,
      ),
      body2: TextStyle(
        fontSize: 16,
      ),
      caption: TextStyle(
        fontSize: 14,
      ),
    );
  }

  @override
  FontFamily get fontFamily {
    return FontFamily(
      primary: 'primary',
      secondary: 'secondary',
    );
  }
}

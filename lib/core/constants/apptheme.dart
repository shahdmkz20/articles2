import 'package:flutter/material.dart';

ThemeData EnglishTheme = ThemeData(
  fontFamily: "tajwal",
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
  useMaterial3: true,
  textTheme: const TextTheme(
      //عنوان رئيسي
      titleLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
      // عنوان فقرة او قسم
      titleMedium: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      //عناوين فرعية
      titleSmall: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      displayMedium: TextStyle(fontSize: 24),
      //فقرات
      bodyLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.w300),
      //فقرات ضمن الكاردات
      bodySmall: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
      //التبويبات
      displaySmall: TextStyle(fontSize: 16)),
);

ThemeData ArabicTheme = ThemeData(
  fontFamily: "tajwal",
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
  useMaterial3: true,
  textTheme: const TextTheme(
      //عنوان رئيسي
      titleLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
      // عنوان فقرة او قسم
      titleMedium: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      //عناوين فرعية
      titleSmall: TextStyle(fontSize: 16),
      //التبويبات
      displayMedium: TextStyle(fontSize: 16),
      //فقرات
      bodyLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.w100),
      //فقرات ضمن الكاردات
      bodySmall: TextStyle(fontSize: 16, fontWeight: FontWeight.w100)),
);

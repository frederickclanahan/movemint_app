
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_core/firebase_core.dart';
import 'screens/splash_screen.dart';
import 'themes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  final prefs = await SharedPreferences.getInstance();
  final isDarkMode = prefs.getBool('isDarkMode') ?? true;
  runApp(MoveMintApp(initialDarkMode: isDarkMode));
}

class MoveMintApp extends StatefulWidget {
  final bool initialDarkMode;
  const MoveMintApp({super.key, required this.initialDarkMode});

  @override
  State<MoveMintApp> createState() => _MoveMintAppState();
}

class _MoveMintAppState extends State<MoveMintApp> {
  late bool _isDarkMode;

  @override
  void initState() {
    super.initState();
    _isDarkMode = widget.initialDarkMode;
  }

  void _toggleTheme() async {
    setState(() {
      _isDarkMode = !_isDarkMode;
    });
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool('isDarkMode', _isDarkMode);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MoveMint',
      theme: _isDarkMode ? MoveMintDarkTheme : MoveMintLightTheme,
      home: SplashScreen(toggleTheme: _toggleTheme),
      localizationsDelegates: const [],
      supportedLocales: const [Locale('en', '')],
    );
  }
}

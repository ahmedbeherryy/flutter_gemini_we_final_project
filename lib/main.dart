import 'package:flutter/material.dart';
import 'package:flutter_gemini_we_final_project/providers/chat_provider.dart';
import 'package:flutter_gemini_we_final_project/providers/setting_provider.dart';
import 'package:flutter_gemini_we_final_project/screens/home_screen.dart';
import 'package:flutter_gemini_we_final_project/screens/splash_screen_view.dart';
import 'package:flutter_gemini_we_final_project/themes/my_theme.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await ChatProvider.initHive();

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => ChatProvider()),
      ChangeNotifierProvider(create: (context) => SettingsProvider()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    setTheme();
    super.initState();
  }

  void setTheme() {
    final settingsProvider = context.read<SettingsProvider>();
    settingsProvider.getSavedSettings();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:
      context.watch<SettingsProvider>().isDarkMode ? darkTheme : lightTheme,
      debugShowCheckedModeBanner: false,
     // home: const HomeScreen(),
      home: const SplashScreenView(),
    );
  }
}


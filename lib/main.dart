// Entry Point: main.dart
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'core/app_router.dart';
import 'core/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const GTHRApp());
}

class GTHRApp extends StatelessWidget {
  const GTHRApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'GTHR',
      theme: GTHRTheme.light,
      darkTheme: GTHRTheme.dark,
      routerConfig: AppRouter.router,
    );
  }
}
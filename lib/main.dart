import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/theme_data.dart';
import 'package:flutter_application_1/firebase_options.dart';
import 'package:flutter_application_1/providers/theme_provider.dart';
import 'package:provider/provider.dart';
import 'screens/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';


void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  




  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider()..getTheme()),
      ],
      child: Consumer<ThemeProvider>(
        builder: (context, themeProvider, child) {
          return MaterialApp(
            theme: Styles.themeData(
              isDarkTheme: themeProvider.getIsDarkTheme,
            ),
            home: HomeScreen(),
          );
        },
      ),
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:flutter_application_1/providers/theme_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) {
        return Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Image.asset('assets/images/shop.png', height: 100, width: 100),
                  SizedBox(height: 20),
                  Text(
                    "Duka Letu",
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                SizedBox(height: 50),
                ElevatedButton(onPressed: () {}, child: Text("Buy Now")),
                SwitchListTile(
                  title: Text("Dark Theme"),
                  value: themeProvider.getIsDarkTheme,
                  onChanged: (value) {
                    themeProvider.setDarkTheme(value);
                  },

                ),
                Image.asset('assets/images/shop.png', width: 200, height: 200),
              ],
            ),
          ),
        );
      },
    );
  }
}
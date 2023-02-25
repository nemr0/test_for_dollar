import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:test_for_dollar/Presentation/Screens/upload_screen.dart';
import 'package:test_for_dollar/Presentation/style/theme.dart';

import 'Presentation/Screens/splash_screen.dart';

void main() {
  /// Main Starting point of the flutter app
  runApp(const MaterialAppPreferences());
}

/// Setting Preferences of Material App:
/// like [ThemeData],
/// home [Widget],
/// and more...
class MaterialAppPreferences extends StatelessWidget {
  const MaterialAppPreferences({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      /// created theme allows adding dark mode toggle easily
      /// in future updates.
      theme: theme(),
      themeMode: ThemeMode.light,
      routes: {
        SplashScreen.id: (context) => const SplashScreen(),
        UploadScreen.id: (context) => const UploadScreen(),
      },

      initialRoute: SplashScreen.id,
    );
  }
}

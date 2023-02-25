import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:test_for_dollar/Presentation/Screens/upload_screen.dart';
import 'package:test_for_dollar/Presentation/style/constants.dart';

/// A Built-in Splash screen
class SplashScreen extends HookWidget {
  /// route id
  static const String id = '/';

  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final double height = MediaQuery.of(context).size.height;
    // final double width = MediaQuery.of(context).size.width;
    useEffect(() {
      /// Pushing Upload Screen After 1 Seconds
      Future.delayed(const Duration(seconds: 2)).then((value) {
        Navigator.of(context).pushNamed(UploadScreen.id);
      });
      return null;
    }, []);
    return Container(
      color: primaryColor,
      child: SafeArea(
        child: Stack(
          children: [
            Positioned(
              left: 20,
              child: Image.asset('assets/zagazig-uni-logo.png'),
            ),
            Positioned(
              right: 20,
              child: Image.asset('assets/zagazig-logo.png'),
            ),
            Center(
              child: Image.asset('assets/Logo.png'),
            ),
            // Positioned(
            //   bottom: height * .2,
            //   left: width * .49,
            //   child: const Center(
            //     child: CircularProgressIndicator.adaptive(
            //       backgroundColor: Colors.black,
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

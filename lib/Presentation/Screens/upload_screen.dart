import 'package:flutter/material.dart';
import 'package:test_for_dollar/Presentation/Widgets/Dialogs/result_dialog/upload_image_dialog.dart';

/// Histopathological Image Upload Screen
class UploadScreen extends StatelessWidget {
  /// route id
  static const String id = '/upload';

  const UploadScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 60),
      color: Colors.white,
      child: Column(
        children: [
          const Spacer(
            flex: 3,
          ),
          Image.asset(
            'assets/uploadPage_image.png',
            fit: BoxFit.contain,
            width: width * .8,
          ),
          const Spacer(),
          Text(
            'Upload\nHistopathological image',
            style: Theme.of(context).textTheme.bodyLarge,
            textAlign: TextAlign.center,
          ),
          const Spacer(),
          Text(
            'You can upload the Histopathological Image on this page to see if there is a breast cancer or not.',
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
          const Spacer(
            flex: 2,
          ),
          ElevatedButton.icon(
            style: ButtonStyle(
                fixedSize: MaterialStateProperty.resolveWith(
                    (states) => Size(width * .618, 44))),
            icon: Image.asset('assets/upload_icon.png'),
            label: const Text(
              'Upload',
            ),
            onPressed: () {
              showDialog(
                  context: context, builder: (context) => const UploadDialog());
            },
          ),
          const Spacer(),
        ],
      ),
    );
  }
}

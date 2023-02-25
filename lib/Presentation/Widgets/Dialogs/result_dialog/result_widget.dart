import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:test_for_dollar/Presentation/style/constants.dart';

/// Dialog That Shows Result after [LoadingWidget] success
class ResultWidget extends HookWidget {
  const ResultWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final resultShow = useState(false);

    useEffect(() {
      /// Simulating green appearing as it is not clear in figma file if it will
      /// show with green word and line or will be animated
      Future.delayed(const Duration(seconds: 1))
          .then((value) => resultShow.value = true);
      return null;
    },

        /// no given keys to avoid rebuilds
        []);
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      title: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
            decoration: BoxDecoration(
                border: resultShow.value
                    ? const Border(
                        bottom: BorderSide(color: greenColor, width: 3))
                    : null),
            child: Image.asset(
              'assets/bengin.png',
              fit: BoxFit.contain,
            )),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'The Result is ',
            style: Theme.of(context).textTheme.bodySmall,
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              'Bengin',
              style: TextStyle(
                  color: (resultShow.value) ? greenColor : Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 32),
            ),
          ),
        ],
      ),
      actions: [
        /// Cancel Key to pop the dialog
        OutlinedButton(
            style: ButtonStyle(
                side: MaterialStateProperty.resolveWith(
                    (states) => const BorderSide(color: Colors.transparent))),
            onPressed: () => Navigator.pop(context),
            child: const Text(
              'Cancel',
              style: TextStyle(color: cancelButtonColor),
            ))
      ],
    );
  }
}

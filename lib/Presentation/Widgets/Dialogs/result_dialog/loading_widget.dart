import 'package:flutter/material.dart';
import 'package:test_for_dollar/Presentation/Widgets/Dialogs/result_dialog/circular_dashed_border.dart';

import '../../../style/constants.dart';

/// A Loading Widget/Dialog
class LoadingWidget extends StatelessWidget {
  const LoadingWidget(this.loadingState, {Key? key}) : super(key: key);
  final int loadingState;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    /// using stack to add up widgets together overlayed on each other
    return Stack(children: [
      /// Normal Material [CircularProcessIndicator]
      Center(
        child: SizedBox.square(
          dimension: width * .6,
          child: CircularProgressIndicator(
            backgroundColor: Colors.grey,
            value: loadingState / 100,
          ),
        ),
      ),

      /// Dashed Circular Border
      Center(
        child: CircularDashedBorder(
            width: 9,
            size: width * .4,
            percentage: Text(
              '$loadingState%',
              style: loadingTextStyle,
            )),
      )
    ]);
  }
}
//
// child:

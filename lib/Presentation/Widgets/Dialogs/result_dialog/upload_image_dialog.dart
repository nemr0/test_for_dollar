import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:test_for_dollar/Presentation/Widgets/Dialogs/result_dialog/loading_widget.dart';
import 'package:test_for_dollar/Presentation/Widgets/Dialogs/result_dialog/result_widget.dart';

import '../../../hooks/timer_hook.dart';

class UploadDialog extends HookWidget {
  const UploadDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // for testing purposes
    // using a created hook just to
    // give 0 to 100 in given [mutationTime] in Seconds
    /// Mutation time in Seconds
    /// (0 to 100 will be mutated in 2 seconds for example)
    int mutationTime = 2;

    /// Mutation Hook
    final loadingState = useCount100In(mutationTime);

    /// Returning result after loading
    return (loadingState != 100)
        ? LoadingWidget(loadingState)
        : const ResultWidget();
  }
}

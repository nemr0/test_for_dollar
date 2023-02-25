import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

/// simulates the loading process to load in given seconds
/// the hook takes an duration in sec and creates an interval which adds up to
/// the given duration when it mutates the 100th time
int useCount100In(int countDurationInSec) {
  assert(countDurationInSec > 0 && countDurationInSec < 60);
  return use(_CounterTimer(countDurationInSec));
}

class _CounterTimer extends Hook<int> {
  final int countForSec;

  const _CounterTimer(this.countForSec);

  @override
  _CounterTimerState createState() => _CounterTimerState();
}

class _CounterTimerState extends HookState<int, _CounterTimer> {
  /// The timer
  late Timer timer;

  /// intervals when added up 100 times gives the given duration
  late int interval;

  /// mutating value
  int currentValue = 0;

  @override
  void initHook() {
    super.initHook();
    // calculating interval
    interval = (hook.countForSec * 1000 ~/ 100);
    if (kDebugMode) {
      print('set interval: ${interval}ms');
    }
    // setting timer
    timer = Timer.periodic(Duration(milliseconds: interval), (t) {
      setState(() {
        currentValue++;
        if (kDebugMode) {
          print('Loader Value:$currentValue');
        }
      });
      // cancelling timer if it reached the goal
      if (currentValue == 100) {
        timer.cancel();
      }
    });
  }

  @override
  int build(BuildContext context) {
    return currentValue;
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }
}

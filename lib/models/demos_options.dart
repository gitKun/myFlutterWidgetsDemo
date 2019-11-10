import 'package:flutter/material.dart';

import 'demos_animated_icon.dart';

class DemosOptions {
  DemosOptions({
    Key key,
    this.animatedIcon = kCloseMenuIcon,
    this.startStaus = false,
  });

  final DemosAnimatedIcon animatedIcon;
  final bool startStaus;

  DemosOptions copyWith({
    DemosAnimatedIcon animatedIcon,
    bool startStaus,
  }) {
    return DemosOptions(
      animatedIcon: animatedIcon ?? this.animatedIcon,
      startStaus: startStaus ?? this.startStaus,
    );
  }

//  @override
//  int get hashCode => hashValues(
//      animatedIcon,
//  );
  @override
  int get hashCode => hashValues(
        animatedIcon,
        startStaus,
      );

  @override
  bool operator ==(dynamic other) {
    if (runtimeType != other.runtimeType) {
      return false;
    }
    final DemosOptions typeOther = other;
    return animatedIcon == typeOther.animatedIcon &&
        startStaus == typeOther.startStaus;
  }

  @override
  String toString() {
    return '$runtimeType($animatedIcon)';
  }
}

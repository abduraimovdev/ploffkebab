import 'package:flutter/material.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class ValueBinding extends InheritedWidget {
  const ValueBinding({
    super.key,
    required super.child,
    required this.controller,
    required this.onRefresh,
  });

  final AutoScrollController controller;
  final Future<void> Function() onRefresh;

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;

  static ValueBinding of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<ValueBinding>()!;
}

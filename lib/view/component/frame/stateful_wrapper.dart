import 'package:flutter/material.dart';

class StatefulWrapper extends StatefulWidget {
  const StatefulWrapper({
    required this.onInit,
    required this.child,
    super.key,
  });

  final void Function() onInit;
  final Widget child;

  @override
  StatefulWrapperState createState() => StatefulWrapperState();
}

class StatefulWrapperState extends State<StatefulWrapper> {
  @override
  void initState() {
    widget.onInit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}

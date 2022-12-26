import 'package:flutter/material.dart';

class PaddingCustom extends StatelessWidget {
  const PaddingCustom({
    Key? key,
    required this.check,
  }) : super(key: key);

  final List<Text> check;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: check,
      ),
    );
  }
}

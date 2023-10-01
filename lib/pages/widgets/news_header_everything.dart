import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class EverythingHeaderWidget extends StatelessWidget {
  const EverythingHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "WORLD NEWS :",
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
    ).p8();
  }
}

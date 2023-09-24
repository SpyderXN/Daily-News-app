import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class NewsHeader extends StatelessWidget {
  const NewsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: ["Daily News".text.xl5.bold.make()]).py16();
  }
}

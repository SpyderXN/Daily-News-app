import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class NewsHeader extends StatelessWidget {
  const NewsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Text(
                "Daily News",
                textScaleFactor: 3,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 15,),
              Text("v1.5")
            ],
          )
        ]).py16();
  }
}

import 'package:flutter/material.dart';
class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
          child: Image.asset("assets/images/banner.jpg",
          fit: BoxFit.fill,
          ),
        )

    );
  }
}

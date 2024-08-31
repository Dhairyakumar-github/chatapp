import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SpleshScreen extends StatelessWidget {
  const SpleshScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SvgPicture.asset("assets/svgs/vchat-logo'.svg"),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../widgets/splash_view_body.dart';

class SplashScreenView extends StatelessWidget {
  const SplashScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      backgroundColor: Colors.black,
      body: SplashViewBody(),
    );
  }
}

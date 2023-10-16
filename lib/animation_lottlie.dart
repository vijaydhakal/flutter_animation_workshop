import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AnimationLottliePage extends StatefulWidget {
  const AnimationLottliePage({super.key});

  @override
  State<AnimationLottliePage> createState() => _AnimationLottliePageState();
}

class _AnimationLottliePageState extends State<AnimationLottliePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation Lottlie"),
        backgroundColor: Colors.green,
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Lottie.asset(
              '1.json',
              height: 200.0,
              repeat: true,
              reverse: false,
              animate: true,
            ),
            Lottie.asset(
              '2.json',
              repeat: true,
              reverse: false,
              animate: true,
            ),
          ],
        ),
      ),
    );
  }
}

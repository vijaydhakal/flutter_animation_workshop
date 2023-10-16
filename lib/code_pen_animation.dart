import 'package:flutter/material.dart';

class LoadWidget extends StatelessWidget {
  const LoadWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      height: 36,
      margin: const EdgeInsets.only(left: 50, top: 40),
      decoration: const BoxDecoration(
        color: Colors.black,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildLoadingBar(0),
          _buildLoadingBar(1),
          _buildLoadingBar(2),
          _buildLoadingBar(3),
          _buildLoadingBar(4),
          _buildLoadingBar(5),
          _buildLoadingBar(6),
        ],
      ),
    );
  }

  Widget _buildLoadingBar(int index) {
    return Container(
      // width: 20,
      // height: 36,
      margin: const EdgeInsets.only(left: 10),
      decoration: const BoxDecoration(
        color: Colors.green,
      ),
      child: AnimatedContainer(
        duration: const Duration(seconds: 10),
        curve: Curves.linear,
        transform: Matrix4.rotationZ(index % 2 == 0 ? 0 : 180),
        child: const Text(
          'He',
          style: TextStyle(
            fontSize: 14,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

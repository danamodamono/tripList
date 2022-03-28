import 'package:flutter/material.dart';

class CardBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, contraint){
      final height = contraint.maxHeight;
      final width = contraint.maxWidth;

      //stackの追加
      return Stack(
        children: <Widget>[
          Container(
            color: Colors.white.withOpacity(0.8),
          ),
          Positioned(
            bottom: height * 0.5,
            left: height * 0.40,
            child: Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white30.withOpacity(0.6)
              ),
            ),
          ),
          Positioned(
            top: height * 0.20,
            left: height * 0.35,
            child: Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white60.withOpacity(0.4)
              ),
            ),
          ),
          Positioned(
            top: height * 0.10,
            right: height * 0.39,
            child: Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white38.withOpacity(0.2)
              ),
            ),
          ),
        ],
      );
    });
  }
}

import 'package:flutter/material.dart';

class CustomPageTransformer extends StatelessWidget {
  final Widget page;
  final double pageOffset;

  const CustomPageTransformer({
    required this.page,
    required this.pageOffset,
  });

  @override
  Widget build(BuildContext context) {
    final double pageScale = 1 - (0.3 * pageOffset).abs();
    final double pageTranslation = 0.5 * pageOffset;

    return Transform(
      transform: Matrix4.identity()
        ..scale(pageScale)
        ..translate(pageTranslation * MediaQuery.of(context).size.width, 0.0),
      alignment: Alignment.center,
      child: page,
    
    );
  }
}

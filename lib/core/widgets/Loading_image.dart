
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CustomLoadingImage extends StatelessWidget {
  const CustomLoadingImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200.0,
      height: 200.0,
      child: Shimmer.fromColors(
          baseColor: Colors.grey,
          highlightColor: Colors.white,
          child: Container(
            width: 200.0,
            height: 200.0,
            color: Colors.grey,
          )),
    );
  }
}

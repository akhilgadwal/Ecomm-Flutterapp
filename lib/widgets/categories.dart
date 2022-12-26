import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: FancyShimmerImage(
            height: size.height * 0.2,
            width: double.infinity,
            //addinng a erro widget
            errorWidget: const Icon(
              IconlyBold.danger,
              color: Colors.red,
              size: 28,
            ),
            imageUrl: ('https://i.ibb.co/vwB46Yq/shoes.png'),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Positioned.fill(
            child: Text(
              'Categories',
              textAlign: TextAlign.center,
              style: TextStyle(
                backgroundColor: Colors.white.withOpacity(0.5),
                fontSize: 20,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

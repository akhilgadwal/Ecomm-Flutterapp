import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class Userswidget extends StatelessWidget {
  const Userswidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListTile(
      leading: FancyShimmerImage(
        height: size.height * 0.15,
        width: size.width * 0.15,
        //addinng a erro widget
        errorWidget: const Icon(
          IconlyBold.danger,
          color: Colors.red,
          size: 28,
        ),
        imageUrl: ('https://i.ibb.co/vwB46Yq/shoes.png'),
        boxFit: BoxFit.contain,
      ),
      subtitle: const Text(
        'Email@gmail.com',
      ),
      title: const Text(
        'User-name',
      ),
    );
  }
}

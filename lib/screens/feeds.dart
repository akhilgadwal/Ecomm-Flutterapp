import 'package:ecomm/widgets/feeds.dart';
import 'package:flutter/material.dart';

class DetailScreens extends StatelessWidget {
  const DetailScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey,
        title: Text(
          'All-Products',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 3,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 0.0,
              childAspectRatio: 0.6,
              crossAxisSpacing: 0.0),
          itemBuilder: ((context, index) {
            return const FeedsWidget();
          }),
        ),
      ),
    );
  }
}

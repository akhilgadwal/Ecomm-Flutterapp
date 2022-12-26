import 'package:flutter/material.dart';

import '../widgets/categories.dart';

class CategorieScreen extends StatelessWidget {
  const CategorieScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Categories',
        ),
      ),
      body: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 3,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 0.0,
            childAspectRatio: 1.2,
            crossAxisSpacing: 0.0),
        itemBuilder: ((context, index) {
          return const Categories();
        }),
      ),
    );
  }
}

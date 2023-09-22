import 'package:flutter/material.dart';

import '../../product/category_products_page.dart';
import 'category_item_widget.dart';


class CategoryWidget extends StatelessWidget {
  final bool isHomePage;
  const CategoryWidget({
    Key? key,
    required this.isHomePage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: 15,
        mainAxisSpacing: 5,
        childAspectRatio: (1 / 1.3),
      ),
      itemCount: 8,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const CategoryProductsPage(
                  isBrand: false,
                  id: '1',
                ),
              ),
            );
          },
          child: const CategoryItemWiget(),
        );
      },
    );
  }
}

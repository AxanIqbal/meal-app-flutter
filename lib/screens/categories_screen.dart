import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meal/widgets/caregory_item.dart';

import '../dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: GridView(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: (3 / 2),
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: DUMMY_CATEGORIES
            .map((carData) => CategoryItem(carData.title, carData.color,carData.id))
            .toList(),
      ),
    );
  }
}

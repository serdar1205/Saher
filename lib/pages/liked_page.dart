import 'package:flutter/material.dart';
import 'package:saher/models/data.dart';
import 'package:saher/widgets/one_category_card.dart';

import '../models/category_model.dart';

class LikePage extends StatelessWidget {
  const LikePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverGrid(
              delegate: SliverChildBuilderDelegate(
                  childCount: categoryName.length,
                      (BuildContext context, int index) {
                    return Container(
                      margin: const EdgeInsets.only(
                          bottom: 7, left: 7, right: 7, top: 7),
                      //color: Colors.green,
                      child: OneCategoryCard(
                        categoryProductData: CategoryProductData(
                            image: categoryImg[index],
                            categoryName: categoryName[index],
                            productName: productName[index],
                            price: productPrice[index],
                            oldPrice: productPrice[index]),
                        checkOldPrice: stock[index],
                      ),
                    );
                  }),
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 225, //210 - 260
                childAspectRatio: 0.75,
              )),
        ],
      ),
    );
  }
}
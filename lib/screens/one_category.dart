import 'package:flutter/material.dart';
import 'package:saher/models/data.dart';
import 'package:saher/models/model.dart';
import 'package:saher/theme.dart';
import 'package:saher/widgets/widgets.dart';

class OneCategory extends StatelessWidget {
  const OneCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: oneCategoryTitle('Et we suyt onumleri', 21, context),
          ),

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

import 'package:flutter/material.dart';
import 'package:saher/models/data.dart';
import 'package:saher/models/model.dart';
import 'package:saher/widgets/widgets.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverGrid(
              delegate: SliverChildBuilderDelegate(
                  childCount: categoryName.length,
                      (BuildContext context,int index){
                    return Container(
                      margin: const EdgeInsets.only(bottom: 7,left: 7,right: 7,top: 7), //color: Colors.green,
                      child: CategoryCard(categoryTitleData: CategoryTitleData(
                          image: categoryImg[index],
                          categoryName: categoryName[index]), index: index+1,),
                    );
                  }
              ),
              gridDelegate:   SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 225,//210 - 260
                childAspectRatio: 0.79,
              )),
        ],
      ),
    );
  }
}

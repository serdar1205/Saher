import 'package:flutter/material.dart';
import 'package:saher/models/model.dart';
import 'package:saher/screens/one_category.dart';
import 'package:saher/theme.dart';
import 'package:saher/widgets/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryCard extends StatelessWidget {
  CategoryCard({Key? key, required this.categoryTitleData, required this.index})
      : super(key: key);
  CategoryTitleData categoryTitleData;
  final int index;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => OneCategory()));
      },
      child: Container(
        width: 190,
        decoration: BoxDecoration(
            color: index % 2 != 0
                ? AppColors.categoryCardColor1
                : AppColors.categoryCardColor2,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
                color: index % 2 != 0
                    ? AppColors.categoryBorderColor1
                    : AppColors.categoryBorderColor2 ,
                width: 1.5)),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/${categoryTitleData.image}',
                height: 100,
                width: 100,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: CategoryTitle(name: categoryTitleData.categoryName))
            ],
          ),
        ),
      ),
    );
  }
}

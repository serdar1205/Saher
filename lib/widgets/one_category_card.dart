import 'package:flutter/material.dart';
import 'package:saher/theme.dart';
import 'package:saher/widgets/custom_text.dart';
import 'package:saher/models/model.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OneCategoryCard extends StatelessWidget {
  OneCategoryCard(
      {Key? key,
      required this.categoryProductData,
      required this.checkOldPrice})
      : super(key: key);
  CategoryProductData categoryProductData;
  final bool checkOldPrice;

  //bool like = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 190,
          decoration: BoxDecoration(
              color: Color.fromRGBO(240, 240, 240, 0.5),
              borderRadius: BorderRadius.circular(4),
              border: Border.all(color: AppColors.iconLight, width: 1.5)),
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/${categoryProductData.image}',
                  height: 100,
                  width: 100,
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        smallText(
                            title: categoryProductData.categoryName,
                            color: AppColors.textFaded),
                        mediumText(title: categoryProductData.productName)
                      ],
                    )),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              '${categoryProductData.price}',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 22,
                                  color: Color.fromRGBO(48, 190, 118, 1)),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 5),
                              child: Text(
                                'TMT',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 10,
                                    color: Color.fromRGBO(48, 190, 118, 1)),
                              ),
                            )
                          ],
                        ),
                        checkOldPrice
                            ? Row(
                                children: [
                                  Text(
                                    '${categoryProductData.oldPrice}',
                                    style: TextStyle(
                                        decoration: TextDecoration.lineThrough,
                                        fontSize: 14,
                                        color: AppColors.textFaded),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(top: 5),
                                    child: Text(
                                      'TMT',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 8,
                                          color: AppColors.textFaded),
                                    ),
                                  )
                                ],
                              )
                            : Container(),
                      ],
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(48, 190, 118, 1),
                            borderRadius: BorderRadius.circular(4)),
                        child: Icon(
                          Icons.shopping_basket,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        checkOldPrice
            ?
            // Positioned(
            //     left: 0,
            //      top: 0,
            //
            //     child: Container(
            //       height: 55,
            //       width: 45,
            //       child: Image.asset('assets/icons/skidka.png',
            //         height: 45,width: 35,fit: BoxFit.cover,),
            //     ))
            Positioned(
                child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(50),
                        topLeft: Radius.circular(5))),
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Text(
                    '40%',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                ),
              ))
            : Container(),
        Positioned(
            right: 10,
            top: 8,
            child: InkWell(
              onTap: () {},
              child: Container(
                height: 28,
                width: 28,
                child: SvgPicture.asset(
                  'assets/icons/bottombar/Heart.svg',
                  height: 24,
                  width: 24,
                ),
              ),
            ))
      ],
    );
  }
}

oneCategoryTitle(String title, int stock, context) {
  return Container(
    padding: EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
                size: 20,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            CategoryTitle(
              name: title,
            ),
          ],
        ),
        Row(
          children: [
            Text(
              'Jemi: ',
              style: TextStyle(
                  color: Color.fromRGBO(48, 190, 118, 1),
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
            ),
            Text('${stock} sany')
          ],
        )
      ],
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:saher/models/model.dart';
import 'package:saher/theme.dart';
import 'package:saher/widgets/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';


class ProductCard extends StatefulWidget {
  ProductCard({Key? key, required this.productData}) : super(key: key);
  ProductData productData;

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
int basket = 0;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            height: 100,
            width: width - 65,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                borderRadius: BorderRadius.circular(6)),
            child: Align(
              alignment: Alignment.centerRight,
              child: Container(
                width: width - 120,
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //title
                        Container(
                          width: width - 200,
                          child: mediumText(title: widget.productData.productName),
                        ),
                        // taze
                        Container(
                          height: 15,
                          width: 40,
                          decoration: BoxDecoration(
                            color: AppColors.buttonColor,
                            borderRadius: BorderRadius.circular(2),
                          ),
                          child: Center(
                              child: Text(
                            'Taze',
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          )),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            productPrice(widget.productData.price),
                            SizedBox(
                              height: 10,
                            ),
                            productStock(widget.productData.stock)
                          ],
                        ),

                        /// basket button
                        basket > 0 ?Container(
                          height: 40,
                          width: 125,
                          decoration: BoxDecoration(
                            //  color: AppColors.buttonColor,
                              borderRadius: BorderRadius.circular(6),
                              border: Border.all(color: AppColors.buttonColor,)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              InkWell(
                                onTap: (){
                                  setState(() {
                                    basket--;
                                  });

                                },
                                child: Icon(Icons.remove,color: AppColors.buttonColor,),
                              ),
                              Text(basket.toString(), style: TextStyle(
                                  fontSize: 14
                              ),),
                              InkWell(
                                onTap: (){
                                  setState(() {
                                    basket++;
                                  });

                                },
                                child: Icon(Icons.add,color: AppColors.buttonColor,),
                              )
                            ],
                          ),
                        ) :
                        InkWell(
                          onTap: () {
                            setState(() {
                              basket = 1;
                            });
                          },
                          splashColor: Colors.white,
                          child: Container(
                            height: 40,
                            width: 125,
                            decoration: BoxDecoration(
                              color: AppColors.buttonColor,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Center(
                                child: mediumText(title: 'Sebede gos',color: Colors.white)),
                          ),
                        )

                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
            top: 10,
            left: 20,
            child: Image.asset(
              'assets/images/${widget.productData.image}',
              height: 100,
              width: 100,
            ))
      ],
    );
  }

  productPrice(double price) {
    return smallText(title: '${price} manat', color: AppColors.priceColor);
  }

  productStock(bool stock) {
    return Row(
      children: [
        stock ?  SvgPicture.asset('assets/icons/bottombar/stokdabar.svg'):
        SvgPicture.asset('assets/icons/bottombar/stokdayok.svg'),
        // Icon(
        //   stock ? Icons.done_outline_rounded : Icons.cancel_outlined,
        //   color: stock ? AppColors.buttonColor : Colors.red,
        //   size: 16,
        // ),
        SizedBox(
          width: 2,
        ),
        smallText(title: stock ? 'Stokda bar' : 'Stokda yok',color: stock ? AppColors.buttonColor : Colors.red,),

      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:saher/models/data.dart';
import 'package:saher/models/model.dart';
import 'package:saher/theme.dart';
import 'package:saher/widgets/widgets.dart';

class BasketPage extends StatelessWidget {
  const BasketPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height - 220,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: categoryName.length,
                    itemBuilder: (context, index) {
                      return BasketCard(basketData: BasketData(
                          image: productImg[index],
                          productName: productName[index],
                          productAmount: productAmount[index],
                          price: productPrice[index]),);
                    }),
              ),
              _basketOrderButton(context)



            ],
          ),
        )
    );
  }
  _basketOrderButton(BuildContext context){
    return Container  (
      padding: EdgeInsets.only(bottom: 20,left: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width /2+30,
              height: 50,
              decoration: BoxDecoration(
                color: AppColors.buttonColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    bottomLeft: Radius.circular(8)
                )
              ),
              child: Center(
                child: mediumText(title:  'Sargydy tayyarlamak',color: Colors.white)
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width /2- 60,
              height: 50,
              decoration: BoxDecoration(
                  color: AppColors.buttonColor2,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(8),
                      bottomRight: Radius.circular(8)
                  )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  mediumText(title:  '26.47',color: Colors.white),
                  SizedBox(width: 2,),
                  Text(
                    'TMT',
                    maxLines: 1,
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                        overflow: TextOverflow.visible,
                        color: Colors.white
                    ),
                  ),
                ],
              ),

            ),
          ],
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:saher/models/model.dart';
import 'package:saher/theme.dart';
import 'package:saher/widgets/widgets.dart';
class BasketCard extends StatefulWidget {
  BasketCard({Key? key, required this.basketData}) : super(key: key);

  BasketData basketData;

  @override
  State<BasketCard> createState() => _BasketCardState();
}

class _BasketCardState extends State<BasketCard> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: AppColors.textFaded))),
      height: 140,
      margin: EdgeInsets.only(bottom: 10, left: 20, right: 20),
      // padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          ///image
          Container(
            height: 100,
            width: 100,
            child: Image.asset(
              'assets/images/${widget.basketData.image}',
              fit: BoxFit.contain,
            ),
          ),

          ///body
          Container(
            width: MediaQuery.of(context).size.width - 140,
            padding: EdgeInsets.only(left: 20, bottom: 10, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// title
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width - 200,
                        padding: const EdgeInsets.only(right: 5),
                        child: mediumText(title: widget.basketData.productName),
                      ),
                      InkWell(
                        onTap: () {
                          debugPrint("deleted");
                        },
                        child: Icon(
                          Icons.cancel,
                        ),
                      )
                    ],
                  ),
                ),

                /// amount of product
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: smallText(title: '${widget.basketData.productAmount}')
                ),

                /// count
                Row(
                  children: [
                    ///-
                    TextButton(
                        style: ButtonStyle(
                            //padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 2)),
                            ),
                        onPressed: () {
                          setState(() {
                          if(count > 0) count--;
                          });
                        },
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: AppColors.textFaded)),
                          child: Center(
                              child: Text(
                            "-",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: AppColors.textFaded),
                          )),
                        )),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Center(
                        child: Text(
                          count.toString(),
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),

                    ///+
                    TextButton(
                        onPressed: () {
                          setState(() {
                            count++;
                          });
                        },
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: AppColors.textFaded)),
                          child: Center(
                              child: Text(
                            "+",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: AppColors.buttonColor),
                          )),
                        )),
                    Spacer(),
                    Row(
                      children: [
                        Text(
                          '${widget.basketData.price}',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 5),
                          child: Text(
                            'TMT',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 10,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

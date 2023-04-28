import 'package:flutter/material.dart';
import 'package:saher/models/data.dart';
import 'package:saher/models/model.dart';
import 'package:saher/theme.dart';
import 'package:saher/widgets/widgets.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../screens/one_category.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndexOfSlider = 0;
  List<String> bannerImg = ['1.png', '2.png', '3.png'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: _slider(),
          ),
          SliverToBoxAdapter(
            child: _categoryName('Et we sohlat onumleri'),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
                  childCount: productName.length,
                      (BuildContext context, int index) {
            return ProductCard(
              productData: ProductData(
                  image: productImg[index],
                  productName: productName[index],
                  price: productPrice[index],
                  stock: stock[index]),
            );
          }),),
          SliverToBoxAdapter(
            child: _categoryName('Yumurtga, bal we suyt onumleri'),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                childCount: productName.length,
                    (BuildContext context, int index) {
                  return ProductCard(
                    productData: ProductData(
                        image: productImg[index],
                        productName: productName[index],
                        price: productPrice[index],
                        stock: stock[index]),
                  );
                }),),
        ],
      ),
    );
  }

  _slider() {
    return Column(children: [
      CarouselSlider.builder(
        itemCount: 3,
        options: CarouselOptions(
          onPageChanged: (index, reason) {
            setState(() {
              currentIndexOfSlider = index;
            });
          },
          height: 200.0,
          aspectRatio: 9 / 9,
          viewportFraction: 1,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 4),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          scrollDirection: Axis.horizontal,
        ),
        itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
          return Container(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'assets/images/${bannerImg[itemIndex]}',
                fit: BoxFit.contain,
              ),
            ),
          );
        },
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: bannerImg.map((url) {
          int index = bannerImg.indexOf(url);
          return Container(
            width: currentIndexOfSlider == index ? 15 : 8.0,
            height: 8.0,
            margin: EdgeInsets.symmetric(horizontal: 3.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: currentIndexOfSlider == index
                  ? AppColors.selected
                  : AppColors.textFaded,
            ),
          );
        }).toList(),
      ),
    ]);
  }

  _categoryName(String name) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CategoryTitle(name: name),
          InkWell(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>OneCategory()));
            },
            child: Wrap(
              children: [
                Text(
                  'Hemmesi',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(37, 37, 37, 1)),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(Icons.arrow_forward_ios_outlined,
                    size: 16, color: Color.fromRGBO(37, 37, 37, 1))
              ],
            ),
          )
        ],
      ),
    );
  }
}

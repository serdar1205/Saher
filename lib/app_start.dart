import 'package:flutter/material.dart';
import 'package:saher/pages/liked_page.dart';
import 'package:saher/pages/profil_page.dart';
import 'package:saher/screens/one_category.dart';
import 'package:saher/theme.dart';
import 'package:saher/widgets/app_bar.dart';
import 'pages/basket_page.dart';
import 'pages/category_page.dart';
import 'pages/main_page.dart';
import 'screens/profil/sorag_jogap.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppStart extends StatefulWidget {
  const AppStart({Key? key}) : super(key: key);

  @override
  State<AppStart> createState() => _AppStartState();
}

class _AppStartState extends State<AppStart> {
  int pageIndex = 0;

  final List pages = [
    const MainPage(),
    const CategoryPage(),
    const BasketPage(),
    LikePage(),
    const ProfilePage()
  ];

  final pageTitles = [
    'Bas sahypa',
    'Kategoriya',
    'Sebet',
    'Halanlarym',
    'Profile'
  ];

  final pageIcons = [
    'Homedoly.svg',
    'Categorydoly.svg',
    'Buydoly.svg',
    'Heartdoly.svg',
    'Profiledoly.svg'
  ];
  final pageColoredIcons = [
    'Home.svg',
    'Category.svg',
    'Buy.svg',
    'Heart.svg',
    'Profile.svg'
  ];
  @override
  void initState() {
    super.initState();
   // _bottom();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: pageIndex != 4 ? appBar() : null,
      body: pages[pageIndex],
      bottomNavigationBar: _bottom(),
    );
  }
  _bottom(){
    return Padding(
      padding: const EdgeInsets.only(bottom: 3, left: 2),
      child: BottomNavigationBar(
        items: List.generate(
          pageTitles.length,
              (index) => BottomNavigationBarItem(
              icon:pageIndex == index ? SvgPicture.asset('assets/icons/bottombar/${pageIcons[index]}',
              height: 24,width: 24,)
                  :SvgPicture.asset('assets/icons/bottombar/${pageColoredIcons[index]}',
                  height: 24,width: 24,),

                  label: pageTitles[index]),
        ),
        type: BottomNavigationBarType.fixed,
        currentIndex: pageIndex,
        onTap: (value) {
          setState((){
            pageIndex = value;
          });
        },
        fixedColor: AppColors.selected,
      ),
    );
  }
}

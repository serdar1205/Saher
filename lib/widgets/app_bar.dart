import 'package:flutter/material.dart';
import 'package:saher/theme.dart';
import 'buttons.dart';
import 'package:flutter_svg/flutter_svg.dart';


 appBar(){
  return AppBar(

    titleSpacing: 0,
    leadingWidth: 40,
    leading: Align(
      alignment: Alignment.center,
      child: SizedBox(
        width: 20,
        height: 30,
        child: Image.asset('assets/icons/icon.png'),
      ),
    ),
    title: Container(
      height: 35,
      child: TextField(
        style: TextStyle(
            fontSize: 14),
        decoration: InputDecoration(
            hintText: "Gozleg",
            hintStyle: TextStyle(

            ),
            prefixIcon: Container(
                height: 10,width: 10,
                margin: EdgeInsets.all(5),
                child: SvgPicture.asset('assets/icons/bottombar/search.svg',fit: BoxFit.contain,)),
            prefixIconColor: Colors.black26,
            //focusColor: Colors.black26,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(Radius.circular(6)),
            ),
            fillColor: AppColors.appBarColor,
            filled: true,
            contentPadding: EdgeInsets.symmetric(vertical: 5)
        ),
      ),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Align(
          child: IconBackground(icon: 'Notification.svg',
              // color: Colors.black26,
              onTap: (){}),
        ),
      )
    ],
  );
}






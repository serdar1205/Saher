import 'package:flutter/material.dart';
import 'package:saher/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconBackground extends StatelessWidget {
  IconBackground({Key? key, required this.icon, required this.onTap})
      : super(key: key);

  final String icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.appBarColor, //heme.of(context).cardColor,
      borderRadius: BorderRadius.circular(6),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(6),
        splashColor: AppColors.secondary,
        child: Padding(
          padding: EdgeInsets.all(6),
          child: SvgPicture.asset('assets/icons/bottombar/${icon}',height: 24,width: 24,),
        ),
      ),
    );
  }
}

Widget mainButtons({String? label, IconData? icon}) {
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ElevatedButton(
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icon != null
                  ? Padding(
                      padding: EdgeInsets.only(right: 2), child: Icon(icon, size: 20,))
                  : Container(),
              Text(
                label!,
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
              ),
            ],
          ),
          style: ElevatedButton.styleFrom(
            elevation: 1,
            padding: EdgeInsets.only(
              top: 15,
              bottom: 15,
            ),
            textStyle: TextStyle(color: Colors.white),
            backgroundColor: AppColors.buttonColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8))),
          ),
        ),
      ],
    ),
  );
}

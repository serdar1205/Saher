import 'package:flutter/material.dart';
import 'package:saher/theme.dart';

class CategoryTitle extends StatelessWidget {
  CategoryTitle({Key? key, required this.name}) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
        overflow: TextOverflow.clip
         ),
    );
  }
}
mediumText({String? title, Color? color}) {
  return Text(
    title!,
    maxLines: 1,
    style: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w700,
      overflow: TextOverflow.visible,
      color: color != null ? color : null
    ),
  );
}
smallText({String? title, Color? color}) {
  return Text(
    title!,
    maxLines: 1,
    overflow: TextOverflow.fade,
    //softWrap: false,
    style: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: color != null ? color : AppColors.textFaded),
  );
}

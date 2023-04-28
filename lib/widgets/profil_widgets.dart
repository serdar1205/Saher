import 'package:flutter/material.dart';
import 'package:saher/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget headPicture() {
  return Container(
    width: double.infinity,
    height: 240,
    child: Container(
        width: double.infinity,
       // height: 300,
        child: Image.asset(
          'assets/icons/Logo1.jpg',
          fit: BoxFit.fill,
        )),
  );
}


 headerTitle(BuildContext context, String label, [Color? color, bool? back] ) {
  return Container(
    padding: EdgeInsets.fromLTRB(20, 10, 20, 30),
    child: Row(
      children: [
        back == null ? InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 20,
          ),
        ) : Container(),
        Text(
          label,
          style: TextStyle(
              color: color == null ? Colors.black : color,
              fontSize: 16,
              fontWeight: FontWeight.w700),
        )
      ],
    ),
  );
}

Widget inputText({TextInputType? keyboardType}){
  return Padding(
    padding: const EdgeInsets.only(top: 5, bottom: 30),
    child: TextFormField(
      autofocus: false,
      keyboardType: keyboardType,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(bottom: 5, top: 5),
      ),
    ),
  );
}

iconAndTitle({String? title, String? icon, VoidCallback? onPress}) {
  return InkWell(
    onTap: onPress,
    child: Container(
      padding: EdgeInsets.only(
        left: 20,
      ),
      child: Row(
        children: [
          SvgPicture.asset('assets/icons/${icon}',
            ),

          Container(
            padding: const EdgeInsets.only(left: 10, top: 13, bottom: 13),
            child: Text(
              title!,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
          // Divider(thickness: 1,indent: 5,endIndent: 5,height: 4,)
        ],
      ),
    ),
  );
}


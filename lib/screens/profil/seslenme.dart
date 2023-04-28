import 'package:flutter/material.dart';
import 'package:saher/theme.dart';
import 'package:saher/widgets/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SeslenmeScreen extends StatelessWidget {
  const SeslenmeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          headPicture(),
          headerTitle(context, 'Seslenme'),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Soragyňyz '
              'ýa-da arzuwlaryňyz barmy? Bu barada bize ýazyň:',
              style: TextStyle(
                  color: AppColors.buttonColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 14),
            ),
          ),
          Container(
              margin: EdgeInsets.fromLTRB(20, 15, 20, 20),
              padding: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: AppColors.buttonColor)),
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  SvgPicture.asset(
                    'assets/icons/isleg.svg',
                    color: AppColors.buttonColor,
                    width: 24,
                    height: 24,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  smallText(
                      title: 'Islege bagly',
                      color: Color.fromRGBO(96, 96, 96, 1))
                ],
              )),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
                border: Border.all(color: AppColors.buttonColor),
                borderRadius: BorderRadius.circular(8)),
            child: TextFormField(
              autofocus: false,
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.next,
              maxLines: 8,
              decoration: InputDecoration(
                border: OutlineInputBorder(borderSide: BorderSide.none),
                filled: true,
                fillColor: Color.fromRGBO(83, 177, 117, 0.1),
                contentPadding: EdgeInsets.only(bottom: 5, top: 5),
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
              child: mainButtons(label: 'Yatda saklan'))
        ],
      )),
    );
  }
}

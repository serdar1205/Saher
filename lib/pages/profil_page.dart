import 'package:flutter/material.dart';
import 'package:saher/screens/profil/dil.dart';
import 'package:saher/screens/profil/eltip_bermek.dart';
import 'package:saher/screens/profil/sahsy_maglumat.dart';
import 'package:saher/screens/profil/salgylar.dart';
import 'package:saher/screens/profil/sargytlar.dart';
import 'package:saher/screens/profil/seslenme.dart';
import 'package:saher/screens/profil/sorag_jogap.dart';
import 'package:saher/theme.dart';
import 'package:saher/widgets/widgets.dart';

import '../screens/profil/salgyny_uytgedin.dart';
import '../screens/profil/taze_salgy_gos.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Column(
        children: [
          headPicture(),
          headerTitle(context,'Salam', AppColors.buttonColor2,false),
          _address(context),
          iconAndTitle(
              title: 'Sahsy maglumat',
              icon: 'sahsyMag.svg',
              onPress: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => SahsyMaglumatScreen()));
              }),
          iconAndTitle(
              title: 'Salgylarym',
              icon: 'salgylarym.svg',
              onPress: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => SalgylarScreen()));
              }),
           iconAndTitle(
              title: 'Sargytlar',
              icon: 'sargytlar.svg',
              onPress: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => SargytlarScreen()));
              }),
          iconAndTitle(title: 'Seslenme', icon: 'seslenme.svg', onPress: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => SeslenmeScreen()));
          }),
          iconAndTitle(title: 'Sorag-jogap', icon:  'soragjogap.svg', onPress: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => SoragJogapScreen()));
          }),
          iconAndTitle(
              title: 'Eltip bermek we toleg sertleri',
              icon: 'eltipBerme.svg',
              onPress: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => EltipBermekScreen()));
              }),
          iconAndTitle(title: 'Gorkezis dili', icon: 'dili.svg', onPress: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => DilScreen()));
          }),
          iconAndTitle(
              title: 'Biz barada',
              icon: 'bizbarada.svg',
              onPress: () { }),
        ],
      )),
    );
  }
}

Widget _head() {
  return Container(
    width: double.infinity,
    height: 240,
    decoration: BoxDecoration(
        color: AppColors.categoryBorderColor1,
        borderRadius: BorderRadius.only(bottomRight: Radius.circular(100))),
    child: Stack(
      children: [
        Positioned(
          left: 20,
          top: 10,
          child: Row(
            children: [
              Image.asset(
                'assets/icons/icon.png',
                height: 45,
                width: 30,
                fit: BoxFit.contain,
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                'säher',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
              )
            ],
          ),
        )
      ],
    ),
  );
}


Widget _address(context) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Sizin salgynyz'),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Sayol, Sewcenko kocesi'),
            Spacer(),
            IconButton(
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SalgynyUytgedinScreen()));
                },
                icon: Icon(Icons.edit)),
          ],
        ),
        Divider(
          thickness: 1.0,
        )
      ],
    ),
  );
}


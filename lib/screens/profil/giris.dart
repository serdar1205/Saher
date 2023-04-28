import 'package:flutter/material.dart';
import 'package:saher/screens/profil/agza_bolmak.dart';
import 'package:saher/theme.dart';
import 'package:saher/widgets/widgets.dart';

class GirisScreen extends StatelessWidget {
  const GirisScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Column(
        children: [
          headPicture(),
          headerTitle(context,'Giris'),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    smallText(title: 'Telefon belgiňiz'),

                    //Telefon belgi
                    Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 10),
                      child: TextFormField(
                        autofocus: false,
                        keyboardType: TextInputType.number,
                        textInputAction: TextInputAction.next,
                        maxLength: 8,
                        decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.only(bottom: 7, top: 5),
                          prefixText: "+993",
                          prefixStyle:
                              TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ),
                    ),

                    smallText(title: 'Açar söz'),
                    inputText(keyboardType: TextInputType.visiblePassword),

                  ],
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 10),
                    child: smallText(title:'Açar sözi unutdym', color: Color.fromRGBO(96, 96, 96, 1)),
                  ),
                ),

                //button
                mainButtons(label: 'Ulgama gir', icon: Icons.login),
                Container(
                  padding: EdgeInsets.only(top: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      smallText(title:'Hasabyňyz ýokmy?', color: Color.fromRGBO(96, 96, 96, 1)),
                      GestureDetector(
                          onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => AgzaBolScreen()));},
                          child: Text('Agza bol',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16,color: AppColors.buttonColor),)),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      )),
    );
  }

}

import 'package:flutter/material.dart';
import 'package:saher/screens/profil/giris.dart';
import 'package:saher/theme.dart';
import 'package:saher/widgets/widgets.dart';

class AgzaBolScreen extends StatelessWidget {
  const AgzaBolScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Column(
            children: [
              headPicture(),
              headerTitle(context,'Agza bolmak'),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ///ady
                        smallText(title: 'Doly adynyz'),
                        inputText(keyboardType: TextInputType.name),
                        /// nomer
                        smallText(title: 'Telefon belgiňiz'),
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
                        ///saheri
                        smallText(title: 'Yerlesyan saheriniz'),
                        inputText(keyboardType: TextInputType.name),

                        ///oy salgysy
                        smallText(title: 'Oy salgynyz'),
                        inputText(keyboardType: TextInputType.text),
                        /// parol
                        smallText(title: 'Açar söz'),
                        inputText(keyboardType: TextInputType.visiblePassword),

                      ],
                    ),

                    //button
                    mainButtons(label: 'Hasaba al', icon: Icons.person_add_alt),
                    Container(
                      padding: EdgeInsets.only(top: 30, bottom: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          smallText(title:'Hasabyňyz ýokmy?', color: Color.fromRGBO(96, 96, 96, 1)),
                          GestureDetector(
                              onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => GirisScreen()));},
                              child: Text('Giris',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16,color: AppColors.buttonColor),)),
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

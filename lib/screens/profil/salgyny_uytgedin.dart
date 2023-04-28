import 'package:flutter/material.dart';
import 'package:saher/theme.dart';
import 'package:saher/widgets/widgets.dart';

class SalgynyUytgedinScreen extends StatelessWidget {
  const SalgynyUytgedinScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Column(
            children: [
              headPicture(),
              headerTitle(context,'Salgyny uytgedin'),
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

                        ///saheri
                        smallText(title: 'Yerlesyan saheriniz'),
                        inputText(keyboardType: TextInputType.name),

                        ///oy salgysy
                        smallText(title: 'Oy salgynyz'),
                        inputText(keyboardType: TextInputType.text),

                      ],
                    ),

                    //button
                    mainButtons(label: 'Yatda saklan',),

                  ],
                ),
              )
            ],
          )),
    );
  }

}

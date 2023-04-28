import 'package:flutter/material.dart';
import 'package:saher/theme.dart';
import 'package:saher/widgets/widgets.dart';

class SahsyMaglumatScreen extends StatelessWidget {
  const SahsyMaglumatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Column(
            children: [
              headPicture(),
              headerTitle(context,'Sahsy maglumat'),
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

                        /// parol uytget
                        smallText(title: 'Açar sözi uytgetmek'),
                        inputText(keyboardType: TextInputType.visiblePassword),

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

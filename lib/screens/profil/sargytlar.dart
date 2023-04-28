import 'package:flutter/material.dart';
import 'package:saher/theme.dart';
import 'package:saher/widgets/widgets.dart';

class SargytlarScreen extends StatelessWidget {
  const SargytlarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              headPicture(),
              headerTitle(context,'Sargytlar'),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: smallText(title: 'Hic zat tapylmady'),
              )
            ],
          )),
    );
  }

}

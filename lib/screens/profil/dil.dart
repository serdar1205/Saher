import 'package:flutter/material.dart';
import 'package:saher/theme.dart';
import 'package:saher/widgets/widgets.dart';

class DilScreen extends StatefulWidget {
  const DilScreen({Key? key}) : super(key: key);

  @override
  State<DilScreen> createState() => _DilScreenState();
}

class _DilScreenState extends State<DilScreen> {

  int lang = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          headPicture(),
          headerTitle(context,'Dili'),
          Container(
            height: 200,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index){
              return Column(
                children: [
                  InkWell(
                    onTap:(){
                      setState((){
                        lang = index;
                      });

                    },
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      decoration: BoxDecoration(
                        border:index == lang ?
                        Border.symmetric(
                            horizontal: BorderSide(color: AppColors.textFaded,width: 0.5)) : null
                      ),
                      child: Text('Turkmen dili',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: AppColors.buttonColor),),
                    ),
                  ),
                ],
              );
            }),
          )
        ],
      ),
    );
  }
}

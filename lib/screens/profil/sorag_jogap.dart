import 'package:flutter/material.dart';
import 'package:saher/theme.dart';
import 'package:saher/widgets/widgets.dart';


class SoragJogapScreen extends StatelessWidget {
   SoragJogapScreen({Key? key}) : super(key: key);

  List<String> expansionText = [
    'Nädip töleýärsiňiz?',
    'Kurýeriň gelmegi üçin näçe wagt gerek?',
    'Täze gök önümler we miweler barmy?',
    'Harydy halamaýan bolsam, sahypada gaýdyp bilernmi?',
  ];

  List<String> expansionBody = [
    'Satyn almak üçin öz islegiňize görä töläp bilersiňiz. Tölegiň iki görnüsi bar: Bank geçirmesi bilen töleg (Kartlary kabul edýäris: “Milli”, “Rysgal”, “Altyn Asyr”, “Mastercard”, “Visa”). Eltip bermek üçin nagt',
    'Eltip berme, wagt boýunça şäheriň çäginde bolsa 40 minutdan 1 sagada çenli, şäheriň daşynda bolsa1,5 sagada çenli. 100 ýokary bolsa, eltip berme mugt.',
    'Gök-önümler we miweler babatynda, bizde ter gök-önümler we miweler günde satyn alynýar.',
    'Eltip berlende, müşderi eltip berijä DIŇE DESSINE gaýtaryp biler.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          headPicture(),
          headerTitle(context,'Sorag-jogap'),
          expansionTile()

        ],
      ),
    );
  }

  expansionTile(){
    int len = 4;
    double height1 = len * 60;
    double height2 = height1 + 60;
    ValueNotifier<bool> isExpand = ValueNotifier(false);

    return ValueListenableBuilder(
        valueListenable: isExpand,
        builder: (context, val, _){
         var f = val == true ?  height2 : height1;
         print(val.toString()+ ' val');
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            height: f,
            decoration: BoxDecoration(
                color: AppColors.priceColor,
                borderRadius: BorderRadius.circular(8)
            ),
            child: ListView.builder(
              itemCount: len,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {

                return ExpansionTile(
                  iconColor: Colors.white,
                  title: mediumText(title: expansionText[index], color: Colors.white),
                  collapsedIconColor: Colors.white,
                  onExpansionChanged: (check){
                    print(check);
                    isExpand.value = check;

                  },
                  children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(15, 0, 15, 15),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(expansionBody[index],
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Color.fromRGBO(103, 103, 103, 1)
                          ),),
                      ),
                    ),

                  ],
                );
              },
            ),
          );
        });
  }
}

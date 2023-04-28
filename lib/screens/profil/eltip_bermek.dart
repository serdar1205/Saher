import 'package:flutter/material.dart';
import 'package:saher/theme.dart';
import 'package:saher/widgets/widgets.dart';

class EltipBermekScreen extends StatelessWidget {
  const EltipBermekScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          headPicture(),
          headerTitle(context,'Eltip bermek we töleg şertleri'),
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Üplünçilik barada maglumat',
                style: TextStyle(
                    color: AppColors.buttonColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 14),
              ),
            ),
          ),

          ///1
          Container(
              margin: EdgeInsets.fromLTRB(20, 15, 20, 20),
              child: Text(
                '1 Sargyt ediji bilen “Säher markediň” arasyndaky baglannyşyk tertibi:',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              )),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: Color.fromRGBO(83, 177, 117, 0.1),
                border: Border.all(color: AppColors.buttonColor),
                borderRadius: BorderRadius.circular(8)),
            child: Text(
              'Harytlary alandan soň , ulanyja harytlaryň daşky görnüşini we gaplanyşyny, şeýle hem mukdaryny, dolulygyny, assortimentini barlamak maslahat berilýär, Ulanyjy harytlar üçin tölänsoň harytlaryň hili, mukdary, dozasy we gaplamanyň hili baradaky talaplar kabul edilmeýär. Harytlaryň gutarýan senesi, saýtda görkezilen harytlaryň gutarýan senesinden tapawutlanyp biler. Ulanyjy tarapyndan saýtda görkezilen telefon belgilerine ýüz tutup ýa-da satyjy-operator tarapyndan buýrugyň bellige alnandygyny tassyklandan soň aýdyňlaşdyrylmalydyr.'
              ' Harytlaryň gaplanyşy, saýtda görkezilen harytlaryň gaplanyşyndan tapawutlanyp biler. Bu tapawut önüm öndürijisi bilen baglanyşykly.'
              'Satyjy-operator bilen ylalaşylan wagtda buýrugy kabul etmek ýa-da ret etmek mümkin bolmasa, alyjy onlaýn dükanyna bu barada harytlary ýerleşdirmezden 30 minudyň içinde habar bermeli.'
              'Görkezilen gowşuryş salgysyna esaslanyp, ulgam'
              'çykdajylary we gowşuryş wagtyny awtomatiki hasaplaýar.',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),

          ///2
          Container(
              margin: EdgeInsets.fromLTRB(20, 15, 20, 20),
              child: Text(
                '2 “Säher market” önümi gowşurylandan soň töleg.',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              )),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: Color.fromRGBO(83, 177, 117, 0.1),
                border: Border.all(color: AppColors.buttonColor),
                borderRadius: BorderRadius.circular(8)),
            child: Text(
              'Önümiň mukdary 150 manatdan ýokary bolsa, eltip bermek'
              ' hyzmaty mugt amala aşyrylýar. Önümiň bahasy'
              ':checkout_min_sum manatdan az bolsa, ulanyjy iberi'
              'ş bahasyny satyjy-operator bilen gepleşik geçirmäge borçly bolar.'
              'Getirmegiň bahasy, salgysyny, howa şertlerini we günüň wagtyny göz öňü'
              ' nde tutup, satyjy - operator tarapyndan kesgitlenýär.Iberiş'
              ' bahasy, 6.4 - nji maddany görseňiz, soňky'
              'sargytdan soň hasap-faktura mukdaryna goşular.'
              'Bellenen mukdardan :checkout_min_sum manatdan az bolan harytlary (önümleri)'
              ' eltmek üçin aýratyn kwitansiýa berilmeýär.',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          )
        ],
      )),
    );
  }
}

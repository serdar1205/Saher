import 'package:flutter/material.dart';
import 'package:saher/screens/profil/salgyny_uytgedin.dart';
import 'package:saher/screens/profil/taze_salgy_gos.dart';
import 'package:saher/theme.dart';
import 'package:saher/widgets/widgets.dart';

class SalgylarScreen extends StatefulWidget {
  const SalgylarScreen({Key? key}) : super(key: key);

  @override
  State<SalgylarScreen> createState() => _SalgylarScreenState();
}

class _SalgylarScreenState extends State<SalgylarScreen> {

  int adres = 0;
  bool isChecked = false;

  List<String> cities = ['Asgabat, Ahal', 'Tejen, Ahal'];
  List<String> streets = ['Mir 7, Yunus Emre', 'Gonjamasha v, Zelili 9'];
  List<String> users = ['Mowlam Orazow', 'Osman Orazow'];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers:[
          SliverToBoxAdapter(
            child:  headPicture(),
          ),

          SliverToBoxAdapter(
            child:  headerTitle(context,'Salgylarym'),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                childCount: 2,
                    (BuildContext context, int index) {
                  return addressBox(index);
                }),),
          SliverToBoxAdapter(
            child:  addAdresButton(),
          ),
       ]
      ),
    );
  }

  GestureDetector addressBox(int index) {
    return GestureDetector(
                  onTap:(){
                    setState((){
                      adres = index;

                    });

                  },
                  child: Container(
                    height: 250,
                    margin: const EdgeInsets.fromLTRB(10, 5, 10, 10),
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(83, 177, 117, 0.1),
                      border: Border.all(color: AppColors.buttonColor),
                      borderRadius: BorderRadius.circular(18)

                    ),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: adres == index ? Color.fromRGBO(48, 190, 118, 1)
                                  : Color.fromRGBO(48, 190, 118, 0.5),
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(15),
                                bottomRight: Radius.circular(18))
                              ),
                              child: mediumText(title: 'Esasy salgy', color: Colors.white),
                            ),
                             Wrap(
                               children:[
                               adres != index ?  IconButton(
                                   icon: Icon(Icons.delete, color: AppColors.buttonColor,),
                                   onPressed: (){},
                                 ) : Container(),
                                 IconButton(
                                  icon: Icon(Icons.edit, color: AppColors.buttonColor,),
                                    onPressed: (){
                                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SalgynyUytgedinScreen()));
                                    },
                                )],
                             ),

                          ],
                        ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                iconAndTitle(title: cities[index], icon: ''),
                                iconAndTitle(title: streets[index], icon: '',),
                                iconAndTitle(title: users[index], icon: ''),
                                CheckboxListTile(
                                  checkboxShape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4)
                                ),
                                  title: smallText(title: 'Bu salgyny esasy edin', color: AppColors.buttonColor),
                                  checkColor: Colors.white,
                                  activeColor: AppColors.buttonColor,
                                  value:adres == index ? isChecked = true : false,
                                  onChanged: (newValue) {
                                    setState(() {
                                     isChecked =newValue!;
                                     adres = index;
                                    });
                                  },
                                  controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
                                )
                              ],
                            )
                          )
                      ],
                    )
                  ),
                );
  }

   addAdresButton() {
    return GestureDetector(
      onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => SalgyGosScreen()));},
      child: Container(
              width: 100,
              margin: EdgeInsets.fromLTRB(80, 50, 80, 20),
              padding: EdgeInsets.symmetric( vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: AppColors.buttonColor)
              ),
              child: Center(
                child: Text('Taze salgy gosmak',
                  style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16,color: AppColors.buttonColor),),
              )
            ),
    );
  }


}




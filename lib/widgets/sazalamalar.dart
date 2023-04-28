// import 'dart:convert';
//
// import 'package:dowrebap/ip_address.dart';
// import 'package:dowrebap/language/Language.dart';
// import 'package:flutter/material.dart';
// //import 'dart:convert';
// import 'dart:io';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:path/path.dart';
// import 'package:http/http.dart' as http;
//
// import 'Contact.dart';
//
// class Habarlasmak extends StatefulWidget {
//   const Habarlasmak({Key? key}) : super(key: key);
//
//   @override
//   _HabarlasmakState createState() => _HabarlasmakState();
// }
//
// class _HabarlasmakState extends State<Habarlasmak> {
//   String _ady = "", _telNomeri = "", _emaili = "", _haty = "", checked ="";
//   bool awtoKontrol = false;
//   String ip=IpAdress().tel();
//
//   final formKey = GlobalKey<FormState>();
//
//   late FocusNode _fNode;
//   int maxLin = 1;
//
//   final TextEditingController _nameControl = TextEditingController();
//   final TextEditingController _telControl = TextEditingController();
//   final TextEditingController _poctaControl = TextEditingController();
//   final TextEditingController _hatControl = TextEditingController();
//
//
//
//   Language? language;
//   String? checkLang;
//
//   Future<String> get languageFile async{
//     Directory filePath = await getApplicationDocumentsDirectory();
//     //debugPrint("file path: "+filePath.path);
//     return filePath.path;
//   }
//
//   Future<File> get languageFileCreate async{
//     var file = await languageFile + "/myLanguage.text";
//     //var createFile = join(file, "/myLanguage.text");
//     return File(file);
//   }
//
//   Future<String> languageFileRead() async{
//     try{
//       var myFile = await languageFileCreate;
//       String fileRead = await myFile.readAsString();
//       return fileRead;
//     }catch(exception){
//       return "MainPage Language file read islemedi  $exception";
//     }
//   }
//
//   Future<Language> languageAlbum(BuildContext context) async {
//     await languageFileRead().then((value) {
//       checkLang = value;
//     });
//
//     var giveJson = await DefaultAssetBundle.of( context).loadString(
//         checkLang == "ru" ? "assets/language/ru.json"
//             : checkLang == "tm" ? "assets/language/tm.json" : "assets/language/en.json");
//     var decodedJson = json.decode(giveJson);
//     language = Language.fromJson(decodedJson);
//     return language!;
//   }
//
//
//
//   @override
//   void initState() {
//     super.initState();
//     _fNode = FocusNode();
//
//     _fNode.addListener(() {
//       setState(() {
//         if (_fNode.hasFocus) {
//           maxLin = 3;
//         } else {
//           maxLin = 1;
//         }
//       });
//     });
//     //fToast = FToast();
//     //fToast.init(context);
//   }
//
//   @override
//   void dispose() {
//     _fNode.dispose();
//     super.dispose();
//   }
//
//   // late FToast fToast;
//   //
//   // _showToast(){
//   //   Widget toast = Container(
//   //     padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
//   //     decoration: BoxDecoration(
//   //         borderRadius: BorderRadius.circular(25.0), color: Colors.grey),
//   //     child: Row(
//   //       mainAxisSize: MainAxisSize.min,
//   //       children: [
//   //         SizedBox(width: 12.0),
//   //         Text(
//   //           checked.toString(),
//   //           style: TextStyle(
//   //             color: Colors.white,
//   //           ),
//   //         ),
//   //       ],
//   //     ),
//   //   );
//   //   fToast.showToast(child: toast,
//   //   gravity: ToastGravity.BOTTOM,
//   //   toastDuration: Duration(seconds: 2));
//   // }
//   Future<Contact> createUser(String name,
//       String number, String text,String phone,BuildContext context) async {
//     final response = await http.post(
//         Uri.parse(
//           "${IpAdress().tel()}:5001/public/contact-us",
//         ),
//         headers: <String, String>{
//           "Content-Type": "application/json",
//         },
//         body: jsonEncode(
//             <String, String>{"name": name, "email": number, "text": text,"phone":phone}));
//     debugPrint(response.statusCode.toString());
//     debugPrint(response.body);
//     if (response.statusCode == 200) {
//
//       Navigator.pop(context);
//
//       return Contact.fromJson(jsonDecode(response.body));
//     } else {
//       throw Exception("faild");
//     }
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: FutureBuilder(future: languageAlbum(context),
//           builder: (context, AsyncSnapshot<Language> sonucLang){
//             if(sonucLang.hasData){
//               return Scaffold(
//                   backgroundColor: Color.fromRGBO(255, 255, 255, 1),
//                   appBar: AppBar(
//                     title: Text(
//                         sonucLang.data!.sazlamalar.contact
//                     ),
//                   ),
//                   body:Center(
//                     child: Container(
//                       width: MediaQuery.of(context).size.width / 2 + 50,
//                       //height: MediaQuery.of(context).size.height,
//
//                       child: Column(
//                         //crossAxisAlignment: CrossAxisAlignment.start,
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Form(
//                             key: formKey,
//
//                             child: Column(
//                               children: [
//                                 //ady
//                                 Padding(
//                                   padding: const EdgeInsets.only(bottom: 10),
//                                   child: TextFormField(
//                                     controller: _nameControl,
//                                     keyboardType: TextInputType.name,
//                                     textInputAction: TextInputAction.next,
//                                     autofocus: false,
//                                     decoration: InputDecoration(
//                                       contentPadding: EdgeInsets.only(top: 5, bottom: 5),
//                                       labelText: sonucLang.data!.changeLang.name,
//                                       labelStyle: TextStyle(
//                                         fontSize: 16,
//                                         fontWeight: FontWeight.w600,
//                                         color: Color.fromRGBO(102, 102, 102, 1),
//                                       ),
//                                     ),
//
//                                     onSaved: (data) => _ady = data!,
//                                   ),
//                                 ),
//
//                                 //Telefon belgi
//
//                                 Padding(
//                                   padding: const EdgeInsets.only(top: 10, bottom: 8),
//                                   child: TextFormField(
//                                     controller: _telControl,
//                                     autofocus: false,
//                                     keyboardType: TextInputType.number,
//                                     textInputAction: TextInputAction.next,
//                                     maxLength: 8,
//                                     decoration: InputDecoration(
//                                       contentPadding: EdgeInsets.only(bottom: 7, top: 5),
//                                       prefixText: "+993",
//                                       prefixStyle:
//                                       TextStyle(fontSize: 16, color: Colors.black
//
//                                       ),
//                                       labelText: sonucLang.data!.changeLang.telefon,
//                                       labelStyle: TextStyle(
//                                         fontSize: 16,
//                                         fontWeight: FontWeight.w600,
//                                         color: Color.fromRGBO(102, 102, 102, 1),
//                                       ),
//                                     ),
//                                     validator: (String? value) {
//                                       if (value!.length < 8) {
//                                         return sonucLang.data!.changeLang.thisFieldIsRequired;
//                                       }
//                                     },
//                                     onSaved: (data) => _telNomeri = data!,
//                                   ),
//                                 ),
//
//                                 // Elektron poctanyz
//
//                                 Padding(
//                                   padding: const EdgeInsets.only(top: 5, bottom: 10),
//                                   child: TextFormField(
//                                     controller: _poctaControl,
//                                     autofocus: false,
//                                     keyboardType: TextInputType.emailAddress,
//                                     textInputAction: TextInputAction.next,
//                                     decoration: InputDecoration(
//                                       contentPadding: EdgeInsets.only(top: 5, bottom: 5),
//                                       labelText: sonucLang.data!.changeLang.email,
//                                       labelStyle: TextStyle(
//                                         fontSize: 16,
//                                         fontWeight: FontWeight.w600,
//                                         color: Color.fromRGBO(102, 102, 102, 1),
//                                       ),
//                                     ),
//
//                                     onSaved: (data) => _emaili = data!,
//                                   ),
//                                 ),
//
//                                 //hatynyz
//
//                                 Padding(
//                                   padding: const EdgeInsets.only(top: 10, bottom: 20),
//                                   child: TextFormField(
//                                     controller: _hatControl,
//                                     keyboardType: TextInputType.text,
//                                     textInputAction: TextInputAction.done,
//                                     focusNode: _fNode,
//                                     maxLines: maxLin,
//                                     decoration: InputDecoration(
//                                       contentPadding: EdgeInsets.only(top: 5, bottom: 5),
//                                       labelText: sonucLang.data!.changeLang.text,
//                                       labelStyle: TextStyle(
//                                         fontSize: 16,
//                                         fontWeight: FontWeight.w600,
//                                         color: Color.fromRGBO(102, 102, 102, 1),
//                                       ),
//                                     ),
//                                     validator: (String? value) {
//                                       if (value!.length == 0) {
//                                         return sonucLang.data!.changeLang.thisFieldIsRequired;
//                                       }
//                                     },
//                                     onSaved: (data) => _haty = data!,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//
//                           //button ugrat
//                           Container(
//                             child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                                 children: [
//                                   ElevatedButton(
//                                     onPressed: () {
//                                       _girizilenDatanyBarla(context);
//                                     },
//                                     child: Text(
//                                       sonucLang.data!.changeLang.sent,
//                                       style: TextStyle(
//                                           fontWeight: FontWeight.w700, fontSize: 14),
//                                     ),
//                                     style: ElevatedButton.styleFrom(
//                                       elevation: 4,
//                                       padding: EdgeInsets.only(
//                                         top: 5.5, bottom: 5.5, ),
//                                       textStyle:  TextStyle(
//                                           color:Color.fromRGBO(250, 250, 250, 1)),
//                                       backgroundColor:Color.fromRGBO(252, 106, 3, 1),
//                                       shape: RoundedRectangleBorder(
//                                           borderRadius: BorderRadius.all(
//                                               Radius.circular(8))),
//                                     ),
//
//                                   ),
//                                 ]),
//                           ),
//                         ],
//                       ),
//                     ),
//                   )
//
//
//               );
//             }
//             else {
//               return Center(
//                   child: Container(
//                       child: CircularProgressIndicator(
//                         color: Colors.orangeAccent,
//                       )));
//             }
//           }),
//
//
//
//     );
//   }
//
//   Future<void> _girizilenDatanyBarla(BuildContext context) async {
//     if (formKey.currentState!.validate()) {
//       formKey.currentState!.save();
//       debugPrint("Ady: $_ady  Nomeri: $_telNomeri  Emaili: $_emaili Haty: $_haty");
//
//       final String name = _nameControl.text;
//       final String phone = "+993" + _telControl.text;
//       final String pocta = _poctaControl.text;
//       final String hat = _hatControl.text;
//       await createUser(name, pocta, hat,phone,context);
//
//     } else {
//       setState(() {
//         awtoKontrol = true;
//       });
//     }
//   }
//
//
//
// }

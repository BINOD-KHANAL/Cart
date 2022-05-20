import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simplestate/model/cart.dart';
import 'package:simplestate/screen/home.dart';

void main(){
  runApp(
    ChangeNotifierProvider(
        create:(context)=>Cart(),
    child: Main(),)
  );
}
class Main extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

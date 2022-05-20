import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simplestate/model/cart.dart';
import 'package:simplestate/model/product.dart';
import 'package:simplestate/screen/cart.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Product> products=[
    Product(title:'Apple',price:30),
    Product(title:'Apple',price:30),
    Product(title:'Apple',price:30),
    Product(title:'Apple',price:30)
  ];
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context,cart,child){
      return Scaffold(
          appBar:AppBar(title: Text('Shopping cart'),
            actions:<Widget> [
              Row(
                children: <Widget>[
                  IconButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>CartPage()));

                  }, icon: Icon(Icons.shopping_cart)
                  ),
                  Text(cart.count.toString())

                ],
              )
            ],

          ) ,
          body:ListView.builder(
              itemCount: products.length,
              itemBuilder: (context,index){
                return ListTile(
                  title: Text(products[index].title),
                  subtitle: Text(products[index].price.toString())
                  ,
                  trailing: Icon(Icons.add),
                  onTap: (){
                   cart.add(products[index]);
                  },

                );

              })
      );
    });
  }
}

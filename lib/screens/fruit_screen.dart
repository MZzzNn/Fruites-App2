import 'package:flutter/material.dart';
import 'package:task5_3lir/components/fruit_screen/carousel_container.dart';
import 'package:task5_3lir/components/fruit_screen/leading_button.dart';
import 'package:task5_3lir/screens/cart_screen.dart';
import '../components/fruit_screen/material_button.dart';

class FruitScreen extends StatefulWidget {
  @override
  _FruitScreenState createState() => _FruitScreenState();
}

class _FruitScreenState extends State<FruitScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor:Colors.red[50] ,
        elevation: 0,
        leading: leadingButton(context,Colors.black),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right:5.0,top: 15),
            child: Icon(Icons.more_vert,color: Colors.black,size: 25,),
          ),
        ],
      ) ,
      body: Container(
        color: Colors.red[50],
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 3,
                  child: carousel(),
              ),

              Expanded(
                flex: 5,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                   borderRadius: BorderRadius.only(
                     topRight:Radius.circular(50),
                     topLeft: Radius.circular(50),
                   ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Text('Lychee',
                            style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top:10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      width: 40,
                                      height: 40,
                                      child: Card(
                                        color: Colors.grey[50],
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
                                        elevation: 2,
                                        child:Icon(Icons.remove,size: 20,color: Colors.black54,),
                                      ),
                                    ),
                                    Text(' 2',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),),
                                    Text('kg ',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                                    Container(
                                      width: 40,
                                      height: 40,
                                      child: Card(
                                        color: Colors.grey[50],
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
                                        elevation: 2,
                                        child:Icon(Icons.add,size: 20,color: Colors.red[700],),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Text('\$8.01',style: TextStyle(fontSize: 35,fontWeight: FontWeight.w600),),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:16.0),
                          child: Text('Description',
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 21),),
                        ),
                        Text(
                          'Native to Southeastern Asia. this golf ball-sized tropical fruit looks similar to a'
                           'strawberry. its bumpy skin covers a translucent white flesh that\'s a good source'
                              'of Vitamin C.'
                          ,style: TextStyle(fontSize: 18,color: Colors.black45,height: 1.5,wordSpacing: 0.6),),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Colors.grey[100],
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: IconButton(
                                  onPressed: (){},
                                  icon:Icon(Icons.favorite,color: Colors.red,) ,
                                ),
                              ),
                            Button(context, 'Add to cart', (){
                              Navigator.of(context).push(MaterialPageRoute(builder:(contex){return CartScreen();}));}),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
      ),
    );
  }
}

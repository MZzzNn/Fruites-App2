import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/material.dart';
import 'package:task5_3lir/components/cart_screen/fruit_cart.dart';
import '../components/fruit_screen/leading_button.dart';
import '../components/fruit_screen/material_button.dart';
import '../models/fruits.dart';
class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: leadingButton(context,Colors.red),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right:5.0,top: 15),
            child: Icon(Icons.more_vert,color: Colors.black,size: 25,),
          ),
        ],
      ),
      body: Stack(
        children: [
          Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height:  MediaQuery.of(context).size.height*0.2,
                color: Colors.red[50],
                child: Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.only(top:55),
                      child: Button(context, 'Continue', (){}),
                    )) ,
              )),
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height:  MediaQuery.of(context).size.height*0.75,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft:Radius.circular(35),
                    bottomRight:Radius.circular(35) ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical:20.0,horizontal: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Your Cart',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                        Expanded(child: SizedBox()),
                        Text('Total   ',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
                        Text('\$28.02',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                      ],
                    ),
                    SizedBox(height: 30,),

                    Container(
                      height: 360,
                      width: double.infinity,
                      child: ListView.builder(
                          itemCount: fruits_info.length,
                          itemBuilder: (ctx,index){
                            return FruitCart(
                            context: context,
                            color: fruits_info[index].color,
                            image: fruits_info[index].image,
                            count: index+1,
                            price: fruits_info[index].price,
                            title:  fruits_info[index].title,
                            );
                          }
                          ),
                    ),
                  Container(),
                  Container(
                    margin: EdgeInsets.only(top: 40),
                      height: 55,
                      width: MediaQuery.of(context).size.width-60,
                      decoration: DottedDecoration(
                        shape: Shape.box,strokeWidth: 1,dash: [2],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(child: Text('APPLY COUPON',
                        style: TextStyle(fontSize:18,fontWeight: FontWeight.w600 ),))
                     ),
                  ],
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}

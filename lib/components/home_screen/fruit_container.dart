import 'package:flutter/material.dart';
import 'package:task5_3lir/components/home_screen/rounded_container.dart';
import '../../screens/fruit_screen.dart';

class FruitContainer extends StatelessWidget {
  final String image;
  final Color color;
  final Color iconColor;
  final String title;
  final int  price;
  FruitContainer(
      {this.image,this.color,this.title,this.price,this.iconColor});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
           InkWell(
               onTap: (){Navigator.push(context, MaterialPageRoute(builder: (ctx){return FruitScreen();}));},
               child: RoundedContainer(context, color, image)),
            Container(
              height: ( MediaQuery.of(context).size.width *0.1)+10,
              width: MediaQuery.of(context).size.width *0.1,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50),
                  topLeft: Radius.circular(150),
                  bottomRight: Radius.circular(140),
                  bottomLeft: Radius.circular(90),
                ),
              ),
              child:Center(
                child: InkWell(
                      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (ctx){return FruitScreen();}));},
                    child: Icon(Icons.add,size: 25,color: iconColor,)),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top:12.0,right: 30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                title,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top:2.0,right: 30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('\$${price}',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                ),
              ),
              Text('kg',style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 17
              )),
            ],
          ),
        )
      ],
    );
  }
}
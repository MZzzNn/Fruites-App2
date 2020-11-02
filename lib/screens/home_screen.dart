import 'package:flutter/material.dart';
import '../components/home_screen/appbar.dart';
import '../components/home_screen/fruit_container.dart';
import '../constants.dart';
import '../models/fruits.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool fillColor =false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(),
      body: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top:45.0,left: 15),
                  child: Text('What would you like to eat?',
                    style:TextStyle(fontSize: 22, fontWeight: FontWeight.w600) ,),
                )
              ],
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0,vertical:20.0 ),
              child: TextField(
                onTap: ()=> setState(() {fillColor=true;}),
                decoration:KTextFieldDecoration.copyWith(
                    fillColor:fillColor==false? Colors.grey[100]:Colors.grey[200],),
              ),
            ),
            SizedBox(height: 10,),
            Expanded(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(left:18.0),
                  child: GridView.builder(
                      itemCount:fruits_info.length ,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,childAspectRatio:0.75 ,mainAxisSpacing: 10),
                      itemBuilder: (ctx,index){
                        return FruitContainer(
                          color:fruits_info[index].color ,
                          image:fruits_info[index].image  ,
                          title: fruits_info[index].title ,
                          price: fruits_info[index].price ,
                          iconColor:fruits_info[index].iconColor  ,
                        );
                      }),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class page3 extends StatelessWidget {
  const page3({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
      
        title: Text('BMI CALCULATOR',
        style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.purple,
        
      ),
      backgroundColor: Colors.blue,
      body:Container(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          
          children: [
     
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                color: Colors.black,
                padding: EdgeInsets.symmetric(horizontal: 30,vertical: 30),
                child: Icon(Icons.male,size: 100,color: Colors.white,),
              ),
           
            Container(
              color: Colors.black,
                padding: EdgeInsets.symmetric(horizontal: 30,vertical: 30),
                child: Icon(Icons.male,size: 100,color: Colors.white,),
              ),
          ],),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30),
            color: Colors.black,
            child: Column(children: [
              Text(' HEIGHT ',
                style: TextStyle(
                  color:Colors.white,
                  fontSize: 18
                ),),
              Text(' 176 ',
                style: TextStyle(
                  color:Colors.white,
                  fontSize: 38
                ),),
              Slider(
                    value: 174, // Initial value of the slider
                    min: 0,
                    max: 200,
                    onChanged: (value) {
                      // Handle slider value change here
                    },
                  ),
            
            ],),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:[ Container(
              padding: EdgeInsets.symmetric(horizontal: 50,vertical: 30),
              color: Colors.black,
              child: Column(
                
                children: [
                Text(' WEIGHT ',
                style: TextStyle(
                  color:Colors.white,
                  fontSize: 18
                ),),
              Text(' 23 ',
                style: TextStyle(
                  color:Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 28
                ),),
              Row(children: [
                Icon(Icons.minimize,color: Colors.white,),
                Icon(Icons.add_circle,color: Colors.white)
              ],),
              
              ],),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 50,vertical: 30),
              color: Colors.black,
              child: Column(
                
                children: [
                Text(' AGE ',
                style: TextStyle(
                  color:Colors.white,
                  fontSize: 18
                ),),
              Text(' 23 ',
                style: TextStyle(
                  color:Colors.white,
                   fontWeight: FontWeight.bold,
                  fontSize: 28
                ),),
              Row(children: [
                Icon(Icons.minimize,color: Colors.white,),
                Icon(Icons.add_circle,color: Colors.white)
              ],),
              
              ],),
            ),
          ])
        ],),
      ) ,
      bottomNavigationBar: BottomAppBar(
        color: Colors.purple,
        child: Container(child: Center(child:Text('calculate',style: TextStyle(color: Colors.white,fontSize: 30),),))
      ),
    );
  }
}
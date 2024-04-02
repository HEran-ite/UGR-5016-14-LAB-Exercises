import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
            ElevatedButton(onPressed: (){}, child: Icon(Icons.male,size: 100,)
            ,),
            ElevatedButton(onPressed: (){}, child: Icon(Icons.female,size: 100,))
          ],),
          Column(children: [
            Text('height'),
            Text('176'),
            Icon(Icons.add)

          ],),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:[ Column(children: [
              Text('Weight'),
            Text('60'),
            Row(children: [
              Icon(Icons.minimize),
              Icon(Icons.add_circle)
            ],),
            
            ],),
            Column(children: [
              Text('Weight'),
            Text('60'),
            Row(children: [
              Icon(Icons.minimize),
              Icon(Icons.add_circle)
            ],),
            
            ],),
          ])
        ],),
      ) ,
      bottomNavigationBar: BottomAppBar(
        
        child: ElevatedButton(onPressed: (){},child: Text('CALCULATE',
        style: TextStyle(color: Colors.purple,),
        
        
        ),)
      ),
    );
  }
}
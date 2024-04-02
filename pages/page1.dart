

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class page1 extends StatelessWidget {
  const page1({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      appBar: AppBar(
        leading:IconButton(icon:Icon(Icons.arrow_back) ,onPressed: (){},) ,
        actions: [
          
          Row(
            mainAxisAlignment:MainAxisAlignment.spaceEvenly,
            children: [
            
            Icon(Icons.send),
            SizedBox(width: 10,),
            Icon(Icons.settings),
            SizedBox(width: 10,),
          ],)
          
        ],
      ),
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
        child: Column(children: [
            Image.asset('lib/assets/car.jpeg',
            width: 500,
            height: 200,
            ),
            Text('loreum ipsum ',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold
            ),
            
            ),
            Row(
              children: [
                SizedBox(width:20),
                Icon(Icons.thumb_up_sharp),
                Text('0',
                style: TextStyle(
                  fontSize: 22,
                ),),

                SizedBox(width:20),

                Icon(Icons.message),
                SizedBox(width:10),
                Text('0',
                style: TextStyle(
                  fontSize: 22,
                ),),
                SizedBox(width:20),

                Icon(Icons.share),
                SizedBox(width:10),
                Text('share',
                style: TextStyle(
                  fontSize: 22,
                ),),

              ],
            ),
            SizedBox(height:40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              Text('Essential information',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18
              ),
              
              ),

             
              Text('1 of 3 is done',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.grey,
              ),),
              ]),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.check_box),
                  Text('year,make,model ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18
              ),),
                  Icon(Icons.edit,),
                  
                  
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                    Text(
                      'year:1962'
                    ),
                    Text(
                      'year:1962'
                    ),Text(
                      'year:1962'
                    )
                  ],),
                   Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.check_box),
                  Text('desc ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18
              ),),
                  Icon(Icons.edit,),
                  
                  
                ],
              ),
               Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.check_box),
                  Text('photos ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18
              ),),
                  Icon(Icons.edit,),
                  
                  
                ],
              ),
        ],),

      ),
    );
      

  }
}
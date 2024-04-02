import 'package:flutter/material.dart';

class page2 extends StatelessWidget {
  const page2({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color.fromARGB(255, 203, 199, 199),
      appBar: AppBar(
        leading:IconButton(icon:Icon(Icons.arrow_back) ,onPressed: (){},) ,
        title: Text('cart',
        style: TextStyle(color: Colors.orange),),
        backgroundColor: Color.fromARGB(255, 203, 199, 199),
        
      ),
      body: Container(
      
       child: Column(children: [
        Row(children: [
          SizedBox(width: 20,),
          Icon(Icons.shopping_cart),
          Column(children: [
            Text('shoping cart ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28
              ),),
              Text('      verify you quantity and click ',
              style: TextStyle(
                color:Colors.grey,
                fontSize: 18
              ),),
          ],)

        ],),
        SizedBox(height: 20,),
        ListTile(
          leading: Image.asset('lib/assets/car.jpeg'),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Column(
              children: [
                Text('calas'),
                Text('150'),
                
              ],
              
            ),
            Column(children: [

                Icon(Icons.add_circle),
                Text('1.0'),
                Icon(Icons.minimize_rounded),

            ],)
          ],),
        ),
        ListTile(
          
          leading: Image.asset('lib/assets/car.jpeg'),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Column(
              children: [
                Text('calas'),
                Text('150'),
                
              ],
              
            ),
            Column(children: [

                Icon(Icons.add_circle),
                Text('1.0'),
                Icon(Icons.minimize_rounded),

            ],)
          ],),
        )
       ],),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('subtotal'),
              Text('2345')
            ],

          ),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('tax(10%)'),
              Text('12')
            ],

          ),
          ElevatedButton(onPressed: (){}, child: Text('checkout 67.08'))
        ],),
      ),
    );
  }
}
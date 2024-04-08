import 'package:flutter/material.dart';
import 'screeny.dart';


class screenX extends StatelessWidget {
  const screenX({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('screen x ')
        
      ),
      body:Center(
        child:  ElevatedButton(
           child: const Text("Next"),
           onPressed: () {
             Navigator.push(
                 context, MaterialPageRoute(
                     builder: (BuildContext context) => screenY(),
                     settings: const RouteSettings(arguments: "data from x"))
      );}))
);


  }
}
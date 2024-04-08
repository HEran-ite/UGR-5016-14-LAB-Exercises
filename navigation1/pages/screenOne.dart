import 'package:flutter/material.dart';
import 'screenTwo.dart';

class screenOne extends StatelessWidget {
  screenOne({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('screen one ')
        
      ),
      body: Container(
        child: Center(
          child: ElevatedButton(
            child: Text('next'),onPressed: () async {
              // Navigator.push(context,
              //   MaterialPageRoute(builder: (BuildContext context) => screenTwo()))
          //   final result = await Navigator.push(
          //     context,
          //     MaterialPageRoute(builder: (context) =>  screenTwo()),
          // );
            Navigator.pushNamed(context, '/screen2');
            },
          ),),

      ),
        
    );
  }
}
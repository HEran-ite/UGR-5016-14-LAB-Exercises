import 'package:flutter/material.dart';

class screenTwo extends StatelessWidget {
  const screenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('screen two'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('back'),onPressed: ()=> {
            Navigator.pop(context,"YES")
          },
        ),),
    );
  }
}
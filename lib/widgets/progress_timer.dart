import 'package:flutter/material.dart';

class ProgressTimer extends StatelessWidget {
  const ProgressTimer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 60,
      child: Stack(
        alignment: Alignment.center,
        children:[
          CircularProgressIndicator(
            value: 8,
            color: Colors.amber,
            backgroundColor:Colors.grey,
            strokeWidth:4,
          ),
          Center(
            child:Text('4', style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Colors.blue))
          )
        ]
      )
    );
  }
}
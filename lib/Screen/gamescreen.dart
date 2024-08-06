import 'package:flutter/material.dart';

import '../widgets/progress_timer.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          SafeArea(
            child: Column(
              children:[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                          text: 
                              TextSpan(
                                text: "Question ",
                                style: Theme.of(context).textTheme.headlineMedium,
                                children:[
                                  TextSpan(
                                    text:"25",
                                    style: Theme.of(context).textTheme.headlineMedium 
                                  ),
                                  TextSpan(
                                    text:"/",
                                    style: Theme.of(context).textTheme.headlineMedium 
                                  ),
                                  TextSpan(
                                    text:"25",
                                    style: Theme.of(context).textTheme.headlineMedium 
                                  ),
                              ])
                        ),
                        ProgressTimer()
                      ]
                    )
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.6,
                  child: Column(
                    children:[
                      Text("What is Flutter"),
                      Container(
                        width:double.infinity,
                        decoration: BoxDecoration(
                          border:Border.all(width: 3)
                        ),
                        child:Padding(
                          padding: EdgeInsets.all(16.0),
                            child: Row(
                              children: [
                                RichText(
                                  text: TextSpan(
                                    text:'1. ',
                                    style: Theme.of(context).textTheme.headlineLarge,
                                    children:[
                                      TextSpan(text: 'A car'),
                                  ])
                                ),
                                Container(
                                  height:30,
                                  width:30,
                                  padding: EdgeInsets.zero,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: Colors.amber,
                                    border: Border.all(
                                      color:Colors.blue,
                                      width:3 ),
                                    shape: BoxShape.circle
                                  ),
                                  child: Icon(Icons.check, color: Colors.white)
                                )
                              ],
                            ),
                        )
                      )
                    ]
                  ),
                )
              ]
            )
          )
        ] 
      )
    );
  }
}

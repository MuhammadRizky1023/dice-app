import 'package:flutter/material.dart';
import 'dart:math';
class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState(){
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller>{
  var diceRoll  = 2;
  void onDice(){
    setState(() {
        diceRoll = Random().nextInt(6) + 1;
    });
  }
  @override
  Widget build(context){
    return Column(
       mainAxisSize: MainAxisSize.min,
       children: [
         Image.asset(
           'images/dice-$diceRoll.png', width: 200
           ),
           const SizedBox(height: 20,),
           TextButton(
            onPressed: onDice,
            style: TextButton.styleFrom(
              // padding: const EdgeInsets.only(top: 20),
            foregroundColor: Colors.white,
             textStyle: const TextStyle(
              fontSize: 28,
              )
              ),
              child: const Text('RollDice')
           )
       ]
    );
  }
}
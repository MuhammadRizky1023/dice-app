import 'package:flutter/material.dart';
import 'package:dice_app/dice_roller.dart';

var startAligment =  Alignment.topLeft;
var  endAligment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget{
  const GradientContainer({super.key});
  @override
  Widget build(context){
    return Container(
       decoration:  BoxDecoration(
            gradient: LinearGradient(colors: const[
              Color.fromARGB(255, 26, 2, 80),
              Color.fromARGB(255, 45, 2, 97)
            ],
            begin: startAligment,
            end:  endAligment
            )
          ),
          child: const Center(
            child: DiceRoller(),
          ),
    );
  }
}
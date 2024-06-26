import 'package:flutter/material.dart';
import 'package:mypro/diceroller.dart';


var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

@immutable
class GradientContainer extends StatelessWidget {

  const GradientContainer(this.color1, this.color2, {super.key});

  const GradientContainer.purple({super.key})
      :color1 = Colors.deepPurple,
       color2 = Colors.indigo;

  final Color color1;
  final Color color2;



  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child:const Center(
        child: DiceRoller(),
      ),
    );
  }
}

// var startAlignment =Alignment.topLeft;
// var endAlignment =Alignment.bottomRight;
//
//
// class GradientContainer extends StatelessWidget {
//   const GradientContainer({super.key});
//   @override
//   Widget build(context) {
//     return Container(
//       decoration:  BoxDecoration(
//         gradient: LinearGradient(
//           colors: const [
//             Color.fromARGB(255, 26, 2, 80),
//             Color.fromARGB(255, 45, 7, 98),
//           ],
//           begin: startAlignment,
//           end: endAlignment,
//         ),
//       ),
//       child: const Center(
//           child: Text_Style("Hello world"),
//           )
//     );
//   }
// }

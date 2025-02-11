import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  //lista de donas
  final List donutsOnSale = [
    //[donutFlavor, donutPrice, donutColor, imageName]
    ["Ice Cream", "36", Colors.blue, "lib/images/icecream_donut.png"],
    ["Strawberry", "45", Colors.red, "lib/images/strawberry_donut.png"],
    ["Grape Ape", "84", Colors.purple, "lib/images/grape_donut.png"],
    ["Choco", "95", Colors.brown, "lib/images/chocolate_donut.png"]
  ];
  DonutTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      //como se va a distribuir
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
      //que elementos tendra
      itemBuilder: (context, index){

return DonutTitle(
  donutFlavor: donutsOnSale[index][0],
  donutPrice: donutsOnSale[index][1],
  donutColor: donutsOnSale[index][2],
  imageName: donutsOnSale[index][3],
);
      },
//cuantos elementos
  itemCount: donutsOnSale.length,
    );
  }

      }


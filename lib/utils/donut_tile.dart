import 'package:flutter/material.dart';

class DonutTile extends StatelessWidget {
  final String donutFlavor;
  final String donutPrice;
  final dynamic donutColor;
  final String imageName;

  //valor fijo del borde circular
  final double borderRadius = 24;
  const DonutTile({super.key, required this.donutFlavor, required this.donutPrice, this.donutColor, required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: donutColor[50],
          borderRadius: BorderRadius.circular(borderRadius),
          border: Border.all(color: donutColor[50], width: 2.0),
        ),
        child: Column(children: [
          //precio
          Row(
            mainAxisAlignment: MainAxisAlignment.end, //alinear texto a la derecha
            children: [
              Container(
                decoration: BoxDecoration(
                  color: donutColor[100],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(borderRadius),
                     topRight: Radius.circular(borderRadius)
                  ),

                ) ,
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
                child: Text('\$$donutPrice',style: TextStyle(

                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: donutColor[800]

                ),),
              )
            ],
            ),
//imagen del producto
Padding(padding: const EdgeInsets.symmetric(
  horizontal: 40,
  vertical: 12,

),
child: Image.asset(imageName),
),

//tarea: texto del sabor del producto
Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    donutFlavor,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    "Dunkin's Store",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 8),

//tarea: íconos de "me encanta" y "agregar"
Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Ícono de me encanta
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite_border),
                  ),

                  // Botón "Add"
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: donutColor[800],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text(
                      "Add",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
        ],),
      ),
    );
  }
}
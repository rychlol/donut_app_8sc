import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {
  //ruta del archivo del icono
  final String iconPath;
  final String tabName;
  
  const MyTab({super.key, 
  required this.iconPath,
  required this.tabName});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Tab(
          height: 50,
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              //boxShadow: const [BoxShadow(color: Colors.black, spreadRadius: 5, blurRadius: 3)],
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(16)
            ),
            child: Image.asset(iconPath ,
            color: Colors.grey[600],),
          ),
        ),
        Text(tabName,
        style: const TextStyle(fontSize: 10),),
        const SizedBox(height: 5,)
      ],
    );
  }
}
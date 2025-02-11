
import 'package:donut_app/utils/my_tab.dart';
import 'package:flutter/material.dart';

import '../tabs/burger_tab.dart';
import '../tabs/donut_tab.dart';
import '../tabs/pancake_tab.dart';
import '../tabs/pizza_tab.dart';
import '../tabs/smoothie_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();

}
class _HomePageState extends State<HomePage> {
List<Widget> myTabs = [
//donut tab
const MyTab(iconPath: 'lib/icons/donut.png',),
//burger tab
const MyTab(iconPath: 'lib/icons/burger.png',),
//smoothie tab
const MyTab(iconPath: 'lib/icons/smoothie.png',),
//pancake tab
const MyTab(iconPath: 'lib/icons/pancakes.png',),
//pizza tab
const MyTab(iconPath: 'lib/icons/pizza.png',),


];



  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(backgroundColor: Colors.transparent, leading: Icon(Icons.menu, color: Colors.grey[800]),
        actions:
         [Padding( //le da padding a la derecha
          padding: const EdgeInsets.only(right:12.0),
          child: IconButton(onPressed: (){}, icon: Icon(Icons.person)),
        )],
        ),
        body: Column(
          children: [
            //Texto "i Want to eat"
            const Padding(
              padding: EdgeInsets.only(left:24),
              child: Row(
                children: [
                  Text("I want to ",style: TextStyle(fontSize:32),),
                  Text("Eat",style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline)
                    ,)
                ],
              ),
            ),
            //Tab bar
            TabBar(tabs: myTabs),


            //Tap bar view
          Expanded(child: TabBarView(
            children:[
            DonutTab(),
            BurgerTab(),
            SmoothieTab(),
            PancakeTab(),
            PizzaTab(),
          ],)),
            //Carrito
          ],
        ),
      ),
    );
}
}
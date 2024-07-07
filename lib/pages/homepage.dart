import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:furniture/pages/widgets/reusablewidgets.dart';
import 'package:gap/gap.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key}); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
    body: SafeArea(
      child: Padding(
        padding: EdgeInsets.all(16),
     child: Column(
      children: [
        //name and greeting with img 
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Hello, sunghoon!', style: TextStyle(color: Colors.black),),

                Gap(10), 

                Text('Find Stylish Furniture', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),)
              ],
            ),
            CircleAvatar(
              radius: 25,
              backgroundColor: Colors.purple,
              child: CircleAvatar(
                radius: 22, 
              backgroundImage: AssetImage('assets/orang.PNG'),
            )
            )
          ],
        ),

        Gap(10), 

      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          height: 45,
          width: MediaQuery.of(context).size.width/1.4,
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(children: [
            Icon(Icons.search, color: Colors.grey[800],),

            Text('Chair, sofa', style: TextStyle(color: Colors.grey.withOpacity(0.6)),)
          ],)
        ),
        
        Container(
          height: 45,
          width: 45,
          decoration: BoxDecoration(
          color: Colors.purple,
          borderRadius: BorderRadius.circular(14),
          ),
          child: Icon(Icons.account_tree_sharp, color: Colors.white, size: 28,),
        )

      ],
      ),

      Gap(20),
      
      //furniture heading

      Row(
        children: [
        Text('Popular Furniture',
        style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),)

      ],),

  Gap(20),
  
     //products
     Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
          furnitureDetail(context, 'kursi3.png', 'kursi kayu', '200.000', Colors.pink, '25/45'),

           furnitureDetail(context, 'kursi3.png', 'kursi kayu', '200.000', Colors.pink, '25/45'),
     ],),

     Gap(10),
  
     //products
     Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
          furnitureDetail(context, 'kursi3.png', 'kursi kayu', '200.000', Colors.pink, '25/45'),

           furnitureDetail(context, 'kursi3.png', 'kursi kayu', '200.000', Colors.pink, '25/45'),
     ],)


      ],
     ),
      ),
      ),

      bottomNavigationBar: BottomNavigationBar(items:[
        BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.purple,),  label: '',),
        BottomNavigationBarItem(icon: Icon(Icons.settings, color: Colors.purple,), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.favorite, color: Colors.purple,), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart, color: Colors.purple,), label: ''),
]),
    );
  }
  
}
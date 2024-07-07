import 'package:flutter/material.dart';

Container furnitureDetail(BuildContext context, String img, String title, String price, Color color, String pCode){
  return Container(
    width: MediaQuery.of(context).size.width/2.3,
    decoration: BoxDecoration(
      color: color, 
      borderRadius: BorderRadius.circular(12),
    ),
  child: Column(
    children: [
      Container(
        height: 150,
        child: Image.asset(img, fit: BoxFit.cover,)
      ),

      Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(16),
        width: MediaQuery.of(context).size.width/0.3,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),), 

             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text('\$'+ price, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),

              Text(pCode, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
             ],)
        ],
        )

      )
  ],)
  );
}
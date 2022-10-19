import 'package:flutter/material.dart';
class CoffeeType extends StatelessWidget {
 final  String type;
 final bool isSelected;
 final VoidCallback ontap;
 const CoffeeType({Key? key, required this.type,required this.isSelected,required this.ontap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.only(left: 25),
        child: Text(type,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: isSelected?Colors.orange:Colors.white),),
      ),
    );
  }
}

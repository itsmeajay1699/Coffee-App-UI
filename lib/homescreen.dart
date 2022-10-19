import 'package:coffeappui/coffeetile.dart';
import 'package:coffeappui/coffeetype.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 final  List coffeeType=[
    ['Cappucino',true,],
    ['Latte',false,],
    ['Black',false,],
    ['Tea',false,],

  ];
  void isSelected(int index){
    setState(() {

      for(int i=0;i<coffeeType.length;i++){
        coffeeType[i][1]=false;
      }
      coffeeType[index][1]=true;
    });
  }
  int selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const Icon(Icons.menu),
        actions: const  [
          Padding(
            padding: EdgeInsets.only(right: 20),
              child: Icon(Icons.person))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        currentIndex: selectedIndex,
        onTap: (index){
          setState(() {
            selectedIndex=index;
          });
        },
        items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home,),label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.favorite),label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.notifications),label: '')
      ],),
      body: Column(children: [
        Padding(padding: const EdgeInsets.symmetric(horizontal: 25),child: Text('FIND THE BEST COFFEE FOR YOU',style: GoogleFonts.bebasNeue(fontSize: 60),)),
         const  SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Find your Coffee',
              prefixIcon: const Icon(Icons.search),
              focusedBorder: OutlineInputBorder( borderSide: BorderSide(color: Colors.grey.shade600),borderRadius: BorderRadius.circular(16)),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade600)
              ),
            ),
          ),
        ),
        const  SizedBox(height: 25,),
        Container(
          height: 60,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: coffeeType.length,
              itemBuilder: (context,index){
            return CoffeeType(type: coffeeType[index][0],isSelected: coffeeType[index][1],ontap:(){
              isSelected(index);
            },);
          }),
        ),
        Expanded(child: ListView(
          scrollDirection: Axis.horizontal,
          children: const [
             CoffeeTile(),
          ],
        ))
      ],),
    );
  }
}

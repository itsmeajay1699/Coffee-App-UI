import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {
  const CoffeeTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, bottom: 25),
      child: Container(
        padding: EdgeInsets.all(12),
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.black54,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: const Image(
                    image: NetworkImage('https://cutt.ly/NV7jktH'),
                  )),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Latte',
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(height: 4,),
                Text(
                  'With Almond Milk',
                  style: TextStyle(color: Colors.grey[700]),
                ),
                const SizedBox(height: 8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  const Text('\$4.20'),
                  Container(
                    decoration: BoxDecoration(color: Colors.orange,borderRadius: BorderRadius.circular(6)),
                      child: Icon(Icons.add))
                ],)

              ],
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        leading: const Padding(
          padding: EdgeInsets.all(10.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://i0.wp.com/stpetersleck.org/wp-content/uploads/2019/08/logo-home-png-7411.png?ssl=1',
            ),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Column(
              children: [
                Text(
                  'Safenesia App',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                // Text('Safety for Indonesia'),
              ],
            ),
          ],
        ),
        actions: [Icon(Icons.shopping_bag, color: Colors.white)],
      ),

      // Row(
      //   children: [
      //     Spacer(),
      //     Container(
      //       height: 75,
      //       width: 75,

      //       decoration: BoxDecoration(
      //         color: Colors.amber,
      //         image: DecorationImage(
      //           image: AssetImage("assets/images/indo_flag.jpg"),
      //         ),
      //       ),
      //     ),
      //     Spacer(),
      //     Container(
      //       height: 75,
      //       width: 75,

      //       decoration: BoxDecoration(
      //         color: Colors.amber,
      //         image: DecorationImage(
      //           image: AssetImage("assets/images/indo_flag.jpg"),
      //         ),
      //       ),
      //     ),
      //     Spacer(),
      //     Container(
      //       height: 75,
      //       width: 75,

      //       decoration: BoxDecoration(
      //         color: Colors.amber,
      //         image: DecorationImage(
      //           image: AssetImage("assets/images/indo_flag.jpg"),
      //         ),
      //       ),
      //     ),
      //     Spacer(),
      //     Container(
      //       height: 75,
      //       width: 75,

      //       decoration: BoxDecoration(
      //         color: Colors.amber,
      //         image: DecorationImage(
      //           image: AssetImage("assets/images/indo_flag.jpg"),
      //         ),
      //       ),
      //     ),
      //     Spacer(),
      //   ],
      // ),
    );

    // Container(color: Colors.blue),
    // Container(color: Colors.white),
    // Container(color: Colors.blue),
  }
}

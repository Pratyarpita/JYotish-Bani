// import 'package:flutter/material.dart';

// class Earning extends StatefulWidget {
//   const Earning({super.key, required this.text, required this.amount});
//   final String text;
//   final double amount;

//   @override
//   State<Earning> createState() => _EarningState();
// }

// class _EarningState extends State<Earning> {  
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//             children: [
//               Container(
//                 height: 100,
//                 width: 350,
//                 decoration: BoxDecoration(
//                   //color: Color.fromARGB(255, 87, 95, 241),
//                   color: widget.text == "My JB Earning"? Colors.amber : Colors.blue,
//                   borderRadius: BorderRadius.circular(15)
//                 ),
//                 child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(top: 25, left: 10, right: 10),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children:  [
//                           Row(
//                             children:  [                                       
//                               Text(
//                                 widget.text,
//                                   style: const TextStyle(
//                                     color: Colors.black,
//                                     fontSize: 20,
//                                     fontWeight: FontWeight.bold
//                                   ),
//                                 ),
        
//                                 const Icon(
//                                   Icons.keyboard_arrow_right,
//                                   size: 25,
//                                 ),
//                               ],
//                             ),
                                
//                             const SizedBox(
//                               height: 5,
//                             ),
//                             const Text(
//                               'This Month',
//                               style: TextStyle(
//                                 fontSize: 15,                                         
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
        
//                       // const SizedBox(
//                       //   width: 30,
//                       // ),
        
//                       Row(                               
//                         children: const [
//                           Icon(
//                             Icons.currency_rupee,
//                             size: 17,
//                           ),
        
//                           SizedBox(
//                             width: 3,
//                           ),
//                           Text(                                   
//                             '0',
//                             style: TextStyle(
//                               fontSize: 25,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                            SizedBox(
//                         width: 25,
//                       ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//     );
//   }
// }

// class MyWidget extends StatefulWidget {
//   const MyWidget({super.key, required this.text});

//   final String text;


//   @override
//   State<MyWidget> createState() => _MyWidgetState();
// }

// class _MyWidgetState extends State<MyWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SizedBox(
//         child: Row(
//           children: [
//             Container(
//               margin: const EdgeInsets.only(left: 5, right: 5),
//               height: 140,
//               width: 140,
//               decoration: BoxDecoration(
//                 color: const Color.fromARGB(255, 245, 245, 145),
//                 borderRadius: BorderRadius.circular(20)
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
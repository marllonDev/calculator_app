// // ignore_for_file: unused_element
// import 'package:flutter/material.dart';

// class Display extends StatefulWidget {
//   const Display({super.key});

//   @override
//   State<Display> createState() => _DisplayState();
// }

// class _DisplayState extends State<Display> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Row(
//           children: <Widget>[
//             Container(
//               width: MediaQuery.sizeOf(context).width * 0.95,
//               height: MediaQuery.sizeOf(context).height * 0.2,
//               decoration: BoxDecoration(
//                 color: Colors.grey[800],
//                 border: Border.all(width: 1, color: Colors.white),
//                 borderRadius: const BorderRadius.all(
//                   Radius.circular(30),
//                 ),
//               ),
//               child: Align(
//                 alignment: Alignment.center,
//                 child: Text(
//                   '${exp.expression} = ${exp.result}',
//                   style: const TextStyle(
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white,
//                     fontSize: 35,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//         const SizedBox(
//           height: 20,
//         ),
//       ],
//     );
//   }
// }

final List<String> imagList=[
  'assets/img/buddha1.jpg',
  'assets/img/kr1.jpg',
  'assets/img/mh1.jpg',
  'assets/img/buddhha2.jpg',
  'assets/img/kr1.jpg',
  'assets/img/mh1.jpg',
];

String bydefalut = 'assets/img/kr1.jpg';

// import 'package:adv_chanting_counter_app/provider/home_page_provider.dart';
// import 'package:adv_chanting_counter_app/utils/global.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
// import '../component/floatig_button.dart';
// import '../component/image_button.dart';
//
// class Homepage extends StatelessWidget {
//   const Homepage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             fit: BoxFit.cover,
//             image: AssetImage(provider.currentImage),
//           ),
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Center(
//               child: Consumer<HomeProvider>(
//                 builder: (context, provider, child) => Stack(
//                   children: [
//                     Container(
//                       height: 170,
//                       width: 170,
//                       decoration: BoxDecoration(
//                           color: Colors.black45,
//                           shape: BoxShape.circle,
//                           boxShadow: [
//                             BoxShadow(
//                                 color: Colors.black12,
//                                 spreadRadius: 5,
//                                 blurRadius: 15)
//                           ]),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(top: 40, left: 40),
//                       child: GestureDetector(
//                         onTap: () {
//                           Provider.of<HomeProvider>(context, listen: false)
//                               .updateCounter();
//                           Provider.of<HomeProvider>(context, listen: false)
//                               .updateImage('assets/img/homepage_bg.jpg');
//                         },
//                         child: Container(
//                           height: 90,
//                           width: 90,
//                           decoration: BoxDecoration(
//                               color: Colors.black,
//                               shape: BoxShape.circle,
//                               boxShadow: [
//                                 BoxShadow(
//                                     color: Colors.grey.shade800,
//                                     spreadRadius: 2,
//                                     blurRadius: 21)
//                               ]),
//                           child: Center(
//                             child: Text(
//                               provider.counter.toString(),
//                               style: const TextStyle(
//                                   color: Colors.white, fontSize: 30),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingButtons(context),
//     );
//   }
// }
//
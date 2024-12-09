// // import 'package:flutter/material.dart';
// // import 'package:untitled3/h.dart';
// //
// // class InputScreen extends StatefulWidget {
// //   const InputScreen({super.key});
// //
// //   @override
// //   State<InputScreen> createState() => _InputScreenState();
// // }
// //
// // class _InputScreenState extends State<InputScreen> {
// //   int height = 170;
// //   int weight = 70;
// //   int age = 20;
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text(
// //           'BMI Calculator',
// //           style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
// //         ),
// //         centerTitle: true,
// //         backgroundColor: const Color(0xFF090C22),
// //       ),
// //       body: Column(
// //         children: [
// //           Expanded(
// //             child: Row(
// //               children: const [
// //                 GenderCard(gender: 'Male', icon: Icons.male),
// //                 GenderCard(gender: 'Female', icon: Icons.female),
// //               ],
// //             ),
// //           ),
// //           Expanded(
// //             child: Container(
// //               margin: const EdgeInsets.all(15.0),
// //               decoration: BoxDecoration(
// //                 color: const Color(0xFF1D1F33),
// //                 borderRadius: BorderRadius.circular(10),
// //               ),
// //               child: Column(
// //                 mainAxisAlignment: MainAxisAlignment.center,
// //                 children: [
// //                   const Text(
// //                     'HEIGHT',
// //                     style: TextStyle(fontSize: 18, color: Color(0xFF8D8E98)),
// //                   ),
// //                   Row(
// //                     mainAxisAlignment: MainAxisAlignment.center,
// //                     crossAxisAlignment: CrossAxisAlignment.baseline,
// //                     textBaseline: TextBaseline.alphabetic,
// //                     children: [
// //                       Text(
// //                         height.toString(),
// //                         style: const TextStyle(
// //                             fontSize: 50, fontWeight: FontWeight.w900),
// //                       ),
// //                       const Text(
// //                         'cm',
// //                         style: TextStyle(fontSize: 18, color: Color(0xFF8D8E98)),
// //                       ),
// //                     ],
// //                   ),
// //                   Slider(
// //                     value: height.toDouble(),
// //                     min: 100,
// //                     max: 220,
// //                     activeColor: Colors.pink,
// //                     inactiveColor: const Color(0xFF8D8E98),
// //                     onChanged: (double newValue) {
// //                       setState(() {
// //                         height = newValue.round();
// //                       });
// //                     },
// //                   ),
// //                 ],
// //               ),
// //             ),
// //           ),
// //           Expanded(
// //             child: Row(
// //               children: [
// //                 CounterCard(
// //                   label: 'WEIGHT',
// //                   value: weight,
// //                   onIncrement: () => setState(() => weight++),
// //                   onDecrement: () => setState(() => weight--),
// //                 ),
// //                 CounterCard(
// //                   label: 'AGE',
// //                   value: age,
// //                   onIncrement: () => setState(() => age++),
// //                   onDecrement: () => setState(() => age--),
// //                 ),
// //               ],
// //             ),
// //           ),
// //           Container(
// //             width: double.infinity,
// //             height: 70,
// //             margin: const EdgeInsets.only(top: 10),
// //             child: ElevatedButton(
// //               onPressed: () {
// //                 double bmi = weight / ((height / 100) * (height / 100));
// //                 Navigator.push(
// //                   context,
// //                   MaterialPageRoute(
// //                     builder: (context) => ResultScreen(bmi: bmi),
// //                   ),
// //                 );
// //               },
// //               style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
// //               child: const Text(
// //                 'Calculate',
// //                 style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
// //               ),
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }
// //
// // class GenderCard extends StatelessWidget {
// //   final String gender;
// //   final IconData icon;
// //
// //   const GenderCard({required this.gender, required this.icon, super.key});
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Expanded(
// //       child: Container(
// //         margin: const EdgeInsets.all(15.0),
// //         decoration: BoxDecoration(
// //           color: const Color(0xFF1D1F33),
// //           borderRadius: BorderRadius.circular(10),
// //         ),
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: [
// //             Icon(icon, size: 80, color: Colors.white),
// //             const SizedBox(height: 15),
// //             Text(
// //               gender,
// //               style: const TextStyle(fontSize: 18, color: Color(0xFF8D8E98)),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }
// //
// // class CounterCard extends StatelessWidget {
// //   final String label;
// //   final int value;
// //   final VoidCallback onIncrement;
// //   final VoidCallback onDecrement;
// //
// //   const CounterCard({
// //     required this.label,
// //     required this.value,
// //     required this.onIncrement,
// //     required this.onDecrement,
// //     super.key,
// //   });
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Expanded(
// //       child: Container(
// //         margin: const EdgeInsets.all(15.0),
// //         decoration: BoxDecoration(
// //           color: const Color(0xFF1D1F33),
// //           borderRadius: BorderRadius.circular(10),
// //         ),
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: [
// //             Text(
// //               label,
// //               style: const TextStyle(fontSize: 18, color: Color(0xFF8D8E98)),
// //             ),
// //             Text(
// //               value.toString(),
// //               style: const TextStyle(fontSize: 50, fontWeight: FontWeight.w900),
// //             ),
// //             Row(
// //               mainAxisAlignment: MainAxisAlignment.center,
// //               children: [
// //                 IconButton(
// //                   onPressed: onDecrement,
// //                   icon: const Icon(Icons.remove, color: Colors.white),
// //                 ),
// //                 IconButton(
// //                   onPressed: onIncrement,
// //                   icon: const Icon(Icons.add, color: Colors.white),
// //                 ),
// //               ],
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }
//
//
// //////////////////////////////////////////////
//
//
// import 'package:flutter/material.dart';
//
// class ResultScreen extends StatelessWidget {
//   final double bmi;
//
//   const ResultScreen({required this.bmi, super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     String result = bmi < 18.5
//         ? 'UNDERWEIGHT'
//         : (bmi < 24.9 ? 'NORMAL' : (bmi < 29.9 ? 'OVERWEIGHT' : 'OBESE'));
//     String message = result == 'NORMAL'
//         ? 'You have a normal body weight. Good job!'
//         : 'You should take care of your health!';
//
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'Your Result',
//           style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
//         ),
//         centerTitle: true,
//         backgroundColor: const Color(0xFF090C22),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           const Text(
//             'Your Result',
//             style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
//           ),
//           Container(
//             margin: const EdgeInsets.all(15.0),
//             padding: const EdgeInsets.symmetric(vertical: 20),
//             decoration: BoxDecoration(
//               color: const Color(0xFF1D1F33),
//               borderRadius: BorderRadius.circular(10),
//             ),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   result,
//                   style: const TextStyle(
//                       color: Colors.green,
//                       fontSize: 22,
//                       fontWeight: FontWeight.bold),
//                 ),
//                 const SizedBox(height: 15),
//                 Text(
//                   bmi.toStringAsFixed(1),
//                   style: const TextStyle(
//                       fontSize: 80, fontWeight: FontWeight.bold),
//                 ),
//                 const SizedBox(height: 15),
//                 Text(
//                   message,
//                   style: const TextStyle(fontSize: 20, color: Colors.white),
//                   textAlign: TextAlign.center,
//                 ),
//               ],
//             ),
//           ),
//           ElevatedButton(
//             onPressed: () => Navigator.pop(context),
//             style: ElevatedButton.styleFrom(
//               backgroundColor: Colors.pink,
//               padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//             ),
//             child: const Text(
//               'Re-Calculate',
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

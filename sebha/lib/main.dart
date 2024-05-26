import 'package:flutter/material.dart';

main() {
  runApp(const Sebha());
}

class Sebha extends StatefulWidget {
  const Sebha({super.key});

  @override
  State<Sebha> createState() => _SebhaState();
}

class _SebhaState extends State<Sebha> {
  int A = 8, B = 9, C = 0, D = 0;
  void increment() {
    if (A + 1 > 9 && B + 1 < 10) {
      A = 0;
      B++;
    } else if (B + 1 > 9 && A == 9) {
      A = 0;
      B = 0;
      C++;
    } else if (C + 1 > 9 && B + 1 > 9) {
      A = 0;
      B = 0;
      C = 0;
      D++;
    } else {
      A++;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Container(
        decoration: const BoxDecoration(color: Color(0xff333333)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'سَبِّحِ اسْمَ ربِك الْأَعلى',
              style: TextStyle(
                  color: Colors.white, fontFamily: 'decotype', fontSize: 50),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //D
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color(0xff191919)),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 15, right: 15, bottom: 18),
                      child: Text(
                        '$D',
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 100,
                            fontFamily: 'digital-7'),
                      ),
                    ),
                  ),
                  //C
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color(0xff191919)),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 15, right: 15, bottom: 18),
                      child: Text(
                        '$C',
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 100,
                            fontFamily: 'digital-7'),
                      ),
                    ),
                  ),
                  //B
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color(0xff191919)),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 15, right: 15, bottom: 18),
                      child: Text(
                        '$B',
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 100,
                            fontFamily: 'digital-7'),
                      ),
                    ),
                  ),
                  //A
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color(0xff191919)),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 15, right: 15, bottom: 18),
                      child: Text(
                        '$A',
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 100,
                            fontFamily: 'digital-7'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  A = 0;
                  B = 0;
                  C = 0;
                  D = 0;
                });
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff7b61ff),
                  elevation: 10,
                  minimumSize: const Size(150, 50)),
              child: const Text(
                'Reset',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  increment();
                });
              },
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(100, 100),
                  backgroundColor: const Color(0xff7b61ff),
                  elevation: 10),
              child: const Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),

            // CustomPaint(
            //   size: Size(200, 200), // Change size according to your requirement
            //   painter: CirclePainter(),
            // ),
          ],
        ),
      )),
    );
  }
}

// class CirclePainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     final Paint paint = Paint()
//       ..shader = LinearGradient(
//         colors: [
//           Color(0xff333333),
//           Colors.black,
//         ],
//       ).createShader(Rect.fromCircle(center: Offset(100, 100), radius: 100));

//     canvas.drawCircle(
//       Offset(size.width / 2, size.height / 2),
//       size.width / 2,
//       paint,
//     );
//   }

//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) {
//     // Always return true to ensure the circle is repainted
//     return true;
//   }
// }

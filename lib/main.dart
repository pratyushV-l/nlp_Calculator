import 'package:flutter/material.dart';

void main() {
  runApp(const NLPCalc());
}

class NLPCalc extends StatelessWidget {
  const NLPCalc({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: Center(
          child: Homescreen(),
        ),
      ),
    );
  }
}

class Homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1920,
      height: 1080,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(color: Color(0xFFD77137)),
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 61,
            child: Container(
              width: 711,
              height: 710,
              decoration: ShapeDecoration(
                color: Color(0xFFC66A34),
                shape: OvalBorder(
                  side: BorderSide(width: 5, color: Colors.white),
                ),
              ),
            ),
          ),
          Positioned(
            left: 1127,
            top: 590,
            child: Container(
              width: 710,
              height: 711,
              decoration: ShapeDecoration(
                color: Color(0xFFC66A34),
                shape: OvalBorder(
                  side: BorderSide(width: 5, color: Colors.white),
                ),
              ),
            ),
          ),
          Positioned(
            left: 125,
            top: 870,
            child: Container(
              width: 711,
              height: 710,
              decoration: ShapeDecoration(
                color: Color(0xFFC66A34),
                shape: OvalBorder(
                  side: BorderSide(width: 5, color: Colors.white),
                ),
              ),
            ),
          ),
          Positioned(
            left: 1305,
            top: -220,
            child: Container(
              width: 711,
              height: 711,
              decoration: ShapeDecoration(
                color: Color(0xFFC76A34),
                shape: OvalBorder(
                  side: BorderSide(width: 5, color: Colors.white),
                ),
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Natural Language Processing',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 55,
                    fontFamily: 'McLaren',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'The Smart\nCalculator',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 107,
                    fontFamily: 'McLaren',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                   Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AppPage()),
                   );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFC76A34),
                    disabledBackgroundColor: Colors.white,
                    side: BorderSide(width: 5, color: Colors.white),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    fixedSize: const Size(350, 151),
                  ),
                  child: Center(
                    child: Text(
                      'Start',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 80,
                        fontFamily: 'McLaren',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AppPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1920,
      height: 1080,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(color: Color(0xFFD77137)),
      child: Stack(
        children: [
          Positioned(
            left: -335,
            top: -80,
            child: Container(
              width: 711,
              height: 710,
              decoration: ShapeDecoration(
                color: Color(0xFFC66A34),
                shape: OvalBorder(
                  side: BorderSide(width: 5, color: Colors.white),
                ),
              ),
            ),
          ),
          Positioned(
            left: 78,
            top: 864,
            child: Container(
              width: 711,
              height: 710,
              decoration: ShapeDecoration(
                color: Color(0xFFC66A34),
                shape: OvalBorder(
                  side: BorderSide(width: 5, color: Colors.white),
                ),
              ),
            ),
          ),
          Positioned(
            left: 1547,
            top: -454,
            child: Container(
              width: 711,
              height: 711,
              decoration: ShapeDecoration(
                color: Color(0xFFC76A34),
                shape: OvalBorder(
                  side: BorderSide(width: 5, color: Colors.white),
                ),
              ),
            ),
          ),
          Positioned(
            left: 1671,
            top: 387,
            child: Container(
              width: 710,
              height: 711,
              decoration: ShapeDecoration(
                color: Color(0xFFC66A34),
                shape: OvalBorder(
                  side: BorderSide(width: 5, color: Colors.white),
                ),
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'SMART Calculator',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 107,
                    fontFamily: 'McLaren',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: 1053,
                  height: 440,
                  decoration: ShapeDecoration(
                    color: Color(0xFFC76A34),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 5, color: Colors.white),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: 484,
                  height: 151,
                  decoration: ShapeDecoration(
                    color: Color(0xFFC76A34),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 5, color: Colors.white),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Calculate!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 80,
                    fontFamily: 'McLaren',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
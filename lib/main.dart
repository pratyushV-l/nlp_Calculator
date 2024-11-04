import 'package:flutter/material.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

const apiKey = "hidden!";

void aiApi(String funcPrompt, TextEditingController textController) async {
  final model = GenerativeModel(
      model: 'gemini-1.5-flash-latest',
      apiKey: apiKey,
  );

  final prompt = funcPrompt;
  final content = [Content.text(prompt)];
  final response = await model.generateContent(content);

  textController.text = response.text ?? "No response";
}
void main(){
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
      home: const Scaffold(
        body: Center(
          child: Homescreen(),
        ),
      ),
    );
  }
}

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1920,
      height: 1080,
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(color: Color(0xFFD77137)),
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 61,
            child: Container(
              width: 711,
              height: 710,
              decoration: const ShapeDecoration(
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
              decoration: const ShapeDecoration(
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
              decoration: const ShapeDecoration(
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
              decoration: const ShapeDecoration(
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
                const Text(
                  'Natural Language Processing',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 55,
                    fontFamily: 'McLaren',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
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
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                   Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AppPage()),
                   );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFC76A34),
                    disabledBackgroundColor: Colors.white,
                    side: const BorderSide(width: 5, color: Colors.white),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    fixedSize: const Size(350, 151),
                  ),
                  child: const Center(
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
  const AppPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController textController = TextEditingController();
    return Container(
      width: 1920,
      height: 1080,
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(color: Color(0xFFD77137)),
      child: Stack(
        children: [
          Positioned(
            left: -335,
            top: -80,
            child: Container(
              width: 700, // Reduced width
              height: 680, // Reduced height
              decoration: const ShapeDecoration(
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
              width: 700, // Reduced width
              height: 680, // Reduced height
              decoration: const ShapeDecoration(
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
              width: 700, // Reduced width
              height: 700, // Reduced height
              decoration: const ShapeDecoration(
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
              width: 700, // Reduced width
              height: 700, // Reduced height
              decoration: const ShapeDecoration(
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
                const Text(
                  'Smart Calculator',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 91,
                    fontFamily: 'McLaren',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  width: 1040, // Reduced width
                  height: 430, // Reduced height
                  decoration: ShapeDecoration(
                    color: const Color(0xFFC76A34),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 5, color: Colors.white),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Material(
                    color: Colors.transparent,
                    child: TextField(
                      controller: textController,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(20),
                      ),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                      maxLines: null,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    String userInput = textController.text;
                    aiApi("I want you to look at the question I will provide and properly convert it into an equation, for example if i provide the prompt 'Hey! What's 5 apples + 5 apples, in apples?' you would answer '5+5 = 10 apples'. I want nothind other than the equation, answer(with units), show all the steps of working, but no extra information, just provide me the asked info. If the prompt is not math's related please reply with - 'This prompt is not viable to solve'. With that said & everything in mind, your prompt is $userInput", textController);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFC76A34),
                    side: const BorderSide(width: 5, color: Colors.white),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    fixedSize: const Size(470, 116),
                  ),
                  child: const Text(
                    "Calculate",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 80,
                      fontFamily: 'McLaren',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    )
                  )
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
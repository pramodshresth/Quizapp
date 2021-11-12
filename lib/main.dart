import 'package:flutter/material.dart';
import 'package:sunflowerapp/answer.dart';
import 'package:sunflowerapp/next.dart';
import 'package:sunflowerapp/question.dart';
import 'package:sunflowerapp/questionindex.dart';
import 'package:sunflowerapp/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _i = 0;
  var _questionindex = 1;
  var score = 0;

  void OnClick() {
    score = score + 1;
  }

  void OnPress() {
    setState(() {
      _i = _i + 1;
      if (_questionindex < questionsAnswer.length) {
        _questionindex = _questionindex + 1;
      }
      ;
      ;
    });
  }

  var questionsAnswer = [
    {
      'question': "Which is the temple in Nepal’s highest position?",
      "answer": ["Muktinath", 'Pasupatinath', "Gosikunda", "Dhaneshwor"],
      "writeanswer": "Muktinath"
    },
    {
      'question': "Who is the Second Miss Nepal of Nepal?",
      "answer": [
        "Sadikcha Shrestha",
        'Shrinkhala Khatiwada',
        "Sumi Khadka",
        " Manila Magar"
      ],
      "writeanswer": "Sumi Khadka"
    },
    {
      'question': "Which is the largest district of Nepal?",
      "answer": ["Kavre", "Bhaktapur", "Dolpa", "Rolpa"],
      "writeanswer": "Dolpa"
    },
    {
      'question': "How many district in Nepal?",
      "answer": ["75", "77", "34", "80"],
      "writeanswer": "77"
    },
    {
      'question': " Which mountain is known as White Himal?",
      "answer": ["mt Everest", "Daulagiri", "Makalu", "Annapurna"],
      "writeanswer": "Daulagiri"
    },
    {
      'question': "Which is the temple in Nepal’s highest position?",
      "answer": ["Muktinath", 'Pasupatinath', "Gosikunda", "Dhaneshwor"],
      "writeanswer": "Muktinath"
    },
    {
      'question': "Who is the Second Miss Nepal of Nepal?",
      "answer": [
        "Sadikcha Shrestha",
        'Shrinkhala Khatiwada',
        "Sumi Khadka",
        " Manila Magar"
      ],
      "writeanswer": "Sumi Khadka"
    },
    {
      'question': "Which is the largest district of Nepal?",
      "answer": ["Kavre", "Bhaktapur", "Dolpa", "Rolpa"],
      "writeanswer": "Dolpa"
    },
    {
      'question': "How many district in Nepal?",
      "answer": ["75", "77", "34", "80"],
      "writeanswer": "77"
    },
    {
      'question': " Which mountain is known as White Himal?",
      "answer": ["mt Everest", "Daulagiri", "Makalu", "Annapurna"],
      "writeanswer": "Daulagiri"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Quiz App",
      home: Scaffold(
          drawer: Drawer(),
          appBar: AppBar(
            title: Text("Quiz App"),
            backgroundColor: Colors.black,
            centerTitle: true,
          ),
          body: _i < questionsAnswer.length
              ? Column(
                  children: [
                    Question(questionsAnswer[_i]),
                    ...(questionsAnswer[_i]["answer"] as List).map((ans) {
                      return Answer(ans, questionsAnswer[_i]);
                    }),
                    Next(OnPress),
                    QuestionIndex(_questionindex, questionsAnswer.length)
                  ],
                )
              : Result()),
    );
  }
}

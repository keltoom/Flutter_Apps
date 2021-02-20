import 'package:flutter/material.dart';
import 'quiz_brain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() {
  runApp(
      Quizzler(),

  );
}

class Quizzler extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Padding(
            padding:EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizzPage(),
          ),
        ),
      ),
    );
  }
}

class QuizzPage extends StatefulWidget {
  @override
  _QuizzPageState createState() => _QuizzPageState();
}

class _QuizzPageState extends State<QuizzPage> {
  List<Icon> scoreKeeper=[];
  QuizBrain quizBrain=QuizBrain();
  void answerChecker(bool userAnswer){
    bool correctAnswer= quizBrain.getQuestionAnswer();
    setState(() {
      if (quizBrain.isFinished()==true){
        Alert(
          context: context,
          title: "FINISHED!",
          desc: "You've reached the end of the quiz.",
        ).show();
        quizBrain.reset();
        scoreKeeper = [];
      }else {
        if (correctAnswer == userAnswer) {
          scoreKeeper.add(Icon(Icons.check, color: Colors.green,));
        }
        else {
          scoreKeeper.add(Icon(Icons.close, color: Colors.red,));
        }
        quizBrain.nextQuestion();
      }
    });
  }

  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment:MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 5,
            child:Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Text(quizBrain.getQuestionText(),
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 25.0,color: Colors.white) ,),
              ),
            ) ),
        Expanded(
            child:Padding(
              padding: const EdgeInsets.all(15.0),
              child: FlatButton(
                textColor: Colors.white,color: Colors.green,
                 child:Text(
                   'True',style: TextStyle(fontSize: 20.0),
                 ),
                   onPressed: (){
                  answerChecker(true);
          },
        ),
            )
        ),
        Expanded(
            child:Padding(
              padding: const EdgeInsets.all(15.0),
              child: FlatButton(textColor: Colors.white,color: Colors.red,
                  child:Text('False',style: TextStyle(fontSize: 20.0),
          ),
                 onPressed: (){
                answerChecker(false);
          },
        ),
            )
        ),
        Row(
          children: scoreKeeper,
        )
      ],
    );
  }
}

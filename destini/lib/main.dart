import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'story_brain.dart';

void main() {
  runApp(Destini());
}

class Destini extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StoryPage(),
    );
  }
}

class StoryPage extends StatefulWidget {
  @override
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  StoryBrain storyBrain = StoryBrain();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration:BoxDecoration(image: DecorationImage(image: AssetImage('images/background.png'),fit: BoxFit.cover)),
        padding: EdgeInsets.symmetric(vertical: 50.0,horizontal: 15.0),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex:12, child: Center(
                 child: Text(
                   storyBrain.getStory(),
                   style: TextStyle(fontSize: 22.0),
                ),
              )),
              Expanded(
                flex:2,
                  child: FlatButton(
                    onPressed: (){
                      setState(() {
                        storyBrain.nextStory(1);
                      });
                    },
                    child: Text(storyBrain.getChoice1(),
                      style: TextStyle(
                        fontSize: 15.0,
                      ),
                    ),
                  color: Colors.red,)),
              SizedBox(height: 20.0),
              Expanded(
                flex: 2,
                  child: Visibility(
                    visible: storyBrain.buttonShouldBeVisivle(),
                    child: FlatButton(
                      onPressed: (){
                        setState(() {
                          storyBrain.nextStory(2);
                        });
                      },
                      child: Text(storyBrain.getChoice2(),
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                    color: Colors.blue,),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

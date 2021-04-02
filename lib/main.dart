import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() {
  runApp(MaterialApp(
    home: TaskOne(),
  ));
}

class TaskOne extends StatefulWidget {
  @override
  _TaskOneState createState() => _TaskOneState();
}

class _TaskOneState extends State<TaskOne> {

  int number = 0;

  validationForAdd(){
    setState(() {
      number++;
    });
    if(number >= 5){
      Alert(context: context, title: 'cannot add more').show();
    }
  }

  validationForSub(){
    setState(() {
      number--;
    });
    if(number <= 0){
      Alert(context: context, title: 'cannot sub more').show();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            RaisedButton(
              color: Colors.red.shade100,
                child: Text('+'),
                onPressed: (){
                validationForAdd();
                }
            ),
            Container(
              child: Text(number.toString(),style: TextStyle(fontSize: 20),),
            ),
            RaisedButton(
                color: Colors.red.shade100,
                child: Text('-'),
                onPressed: (){
                  validationForSub();
                }
            ),
          ],
        ),
      ),
    );
  }
}














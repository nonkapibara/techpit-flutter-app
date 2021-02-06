import 'package:flutter/material.dart';

class TranstionTop extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      backgroundColor:  Colors.red[50],
      appBar: new AppBar(
          title: const Text(
              'Flutter Top Screen',
              style: TextStyle(color: Colors.white,fontSize: 20.0)
          ),
          centerTitle: true,
          backgroundColor: Colors.pink,
        ),
      body: new Center(
          child: new SizedBox(
            width: 200.0,
            height: 80.0,
              child: new RaisedButton(
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                child: Text(
                    'next second',
                    style: TextStyle(fontSize: 30.0)
                ),
                color: Colors.pink,
                onPressed: () {
                  Navigator.of(context).pushNamed('/second');
                },
              ),
          ),
      ),
    );
  }
}

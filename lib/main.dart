import 'package:calculation/element.dart';
import 'package:calculation/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Calculate1>(
        create: (_) => Calculate1(),
        child:MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: MyHomePage(),
        )
    );
  }
}
class MyHomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("計算"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ResultTextField(),

          ],
        )
    );
  }
}

class ResultTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<Calculate1>(builder: (context, model, child) {
      double screenSizeWidth = MediaQuery
          .of(context)
          .size
          .width;
      return Container(
        width: screenSizeWidth,
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("100"),
          ],
        ),
      );
    });
  }
}
import 'package:flutter/material.dart';

class StepperForm1 extends StatefulWidget {
  const StepperForm1({super.key});

  @override
  State<StepperForm1> createState() => _StepperForm1State();
}

List <Step>getFormSteps1() => [
      Step(
          title: Text('Account'),
          content:
              ElevatedButton.icon(onPressed: () {}, label: Icon(Icons.check))),
      Step(
          title: Text('Address'),
          content:
              ElevatedButton.icon(onPressed: () {}, label: Icon(Icons.check))),
      Step(
          title: Text('Mobile Number'),
          content:
              ElevatedButton.icon(onPressed: () {}, label: Icon(Icons.check))),
    ];

class _StepperForm1State extends State<StepperForm1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'FLutter Stepper Demo',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Column(
        children: [Stepper(steps: getFormSteps1())],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class StepperForm1 extends StatefulWidget {
  const StepperForm1({super.key});

  @override
  State<StepperForm1> createState() => _StepperForm1State();
}

bool isToggle = false;
TextEditingController txtAccount = TextEditingController();
TextEditingController txtAddress = TextEditingController();
TextEditingController txtMobileNo = TextEditingController();
int currentFormStep = 0;

List<Step> getFormSteps1() => [
      Step(
          state: currentFormStep > 0 ? StepState.complete : StepState.indexed,
          isActive: currentFormStep >= 0,
          title: Text('Account', style: TextStyle(fontSize: 12)),
          content: TextFormField(
            cursorColor: Colors.blue,
            controller: txtAccount,
            decoration: InputDecoration(
              hintText: 'Account',
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                      color: Colors.black, style: BorderStyle.solid)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide:
                      BorderSide(color: Colors.blue, style: BorderStyle.solid)),
            ),
          )),
      Step(
          state: currentFormStep > 1 ? StepState.complete : StepState.indexed,
          isActive: currentFormStep >= 1,
          title: Text('Address', style: TextStyle(fontSize: 12)),
          content: TextFormField(
            controller: txtAddress,
            cursorColor: Colors.blue,
            decoration: InputDecoration(
              hintText: 'Address',
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                      color: Colors.black, style: BorderStyle.solid)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide:
                      BorderSide(color: Colors.blue, style: BorderStyle.solid)),
            ),
          )),
      Step(
          state: currentFormStep > 2 ? StepState.complete : StepState.indexed,
          isActive: currentFormStep >= 2,
          title: Text(
            'Mobile Number',
            style: TextStyle(fontSize: 12),
          ),
          content: TextFormField(
            controller: txtMobileNo,
            cursorColor: Colors.blue,
            decoration: InputDecoration(
              hintText: 'Mobile Number',
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                      color: Colors.black, style: BorderStyle.solid)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide:
                      BorderSide(color: Colors.blue, style: BorderStyle.solid)),
            ),
          )),
    ];

class _StepperForm1State extends State<StepperForm1> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        backgroundColor: Colors.blue,
        onPressed: () {
          setState(() {
            if (isToggle) {
              isToggle = false;
            } else {
              isToggle = true;
            }
          });
        },
        child: isToggle
            ? Icon(
                Icons.grid_3x3,
                color: Colors.white,
              )
            : Icon(
                Icons.list,
                color: Colors.white,
              ),
      ),
      appBar: AppBar(
        title: Text(
          'FLutter Stepper Demo',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Theme(
        data: Theme.of(context).copyWith(
          colorScheme: ColorScheme.light(primary: Colors.blue),
        ),
        child: Stepper(
          type: isToggle ? StepperType.vertical : StepperType.horizontal,
          // type: StepperType.horizontal,
          onStepTapped: (value) {
            setState(() {
              currentFormStep = value;
            });
          },
          currentStep: currentFormStep,
          onStepContinue: () {
            setState(() {
              final isLastStep = currentFormStep == getFormSteps1().length - 1;
              if (isLastStep) {
                print('Completed');
              } else {
                currentFormStep += 1;
              }
            });
          },
          onStepCancel: () {
            setState(() {
              currentFormStep == 0 ? null : currentFormStep -= 1;
            });
          },
          steps: getFormSteps1(),
          // controlsBuilder: (context, details, {onStepContinue, onStepCancel}) {
          //   return Container(
          //     margin: EdgeInsets.all(10),
          //     child: Row(
          //       children: [
          //         ElevatedButton(
          //           style: ElevatedButton.styleFrom(
          //             backgroundColor: Colors.blue,
          //           ),
          //           onPressed: onStepContinue,
          //           child: Text(
          //             'Continue',
          //             style: TextStyle(color: Colors.white),
          //           ),
          //         ),
          //         Spacer(),
          //         if(currentFormStep!=0)
          //         ElevatedButton(
          //           style: ElevatedButton.styleFrom(
          //             backgroundColor: Colors.blue,
          //           ),
          //           onPressed: onStepCancel,
          //           child: Text(
          //             'Next',
          //             style: TextStyle(color: Colors.white),
          //           ),
          //         ),
          //       ],
          //     ),
          //   );
          // },
        ),
      ),
    );
  }
}

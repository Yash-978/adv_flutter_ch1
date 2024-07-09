import 'package:flutter/material.dart';

import '../Utils/global.dart';



void main()
{
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: isDark?ThemeMode.dark:ThemeMode.light,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Theme'),
          centerTitle: true,
        ),
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(height: 100,),
              Text('Yo Man!',style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w800,
              ),),
              SizedBox(height: 8,),
              Text("It's a simple example of",style: TextStyle(
                fontSize: 20,
              ),),
              Text('Dark Theme',style: TextStyle(
                fontSize: 20,
              ),),
              SizedBox(height: 60,),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      isDark = false;
                    });
                  },
                  child: themeContainer(height, width,color: Colors.amber,text: 'Light Theme')),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      isDark = true;
                    });
                  },
                  child: themeContainer(height, width,color: Colors.red,text: 'Dark Theme')),
            ],
          ),
        ),
      ),
    );
  }

  Container themeContainer(double height, double width,{required color,required text}) {
    return Container(
      margin: EdgeInsets.all(25),
      height: height * 0.1,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: Text(text,style: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 25
        ),),
      ),
    );
  }
}
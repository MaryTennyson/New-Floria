
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class PassingPage extends StatefulWidget {
  const PassingPage({Key? key}) : super(key: key);

  @override
  State<PassingPage> createState() => _PassingPageState();
}

class _PassingPageState extends State<PassingPage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration:
              BoxDecoration(gradient: LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [Theme.of(context).primaryColor, Theme.of(context).secondaryHeaderColor])),
        ),
        title: Container(
            width: 90.w,
            height: 45.w,
            child: Image.asset(
              "assets/images/floria.png",
              fit: BoxFit.fill,
            )),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
           
          
          ],
        ),
      ),
    );
  }
}



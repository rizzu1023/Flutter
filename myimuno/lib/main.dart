import 'package:flutter/material.dart';
import 'package:myimuno/constant.dart';
import 'package:myimuno/screens/register_screen/register_sceen.dart';

void main(){
  return runApp(Myimuno());
}


class Myimuno extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Myimuno',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          // scaffoldBackgroundColor: backgroundGrayColor,
          fontFamily: "Montserrat",
        ),
        home: RegisterScreen(),

    );
  }
}

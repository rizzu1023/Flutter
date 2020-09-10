import 'package:flutter/material.dart';
import 'package:myimuno/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';


class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: defaultPadding,vertical: 20.0),
                  height: 190,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: primaryBlueColor,
                      // image: DecorationImage(
                      // image: AssetImage("assets/images/avatar.png"),
                    // )
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset('assets/icons/logo.svg',width: 100,color: Colors.white),
                          Icon(Icons.close,size: 50.0,color: Colors.white),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          RichText(
                            textAlign: TextAlign.end,
                            text: TextSpan(
                                children: [
                                  TextSpan(text: 'Secured\n',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.w700)),
                                  TextSpan(text: 'Within',style: TextStyle(color: primaryGreenColor,fontSize: 30,fontWeight: FontWeight.w700)),
                                ]
                            ),
                          ),
                        ],
                      )
                    ],
                  ),

                ),
                Container(
                  color: backgroundGrayColor,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(defaultPadding),
                        child: Text("Hi there, Let's get started and complete your medical screening",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700,color: primaryBlueColor),),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: defaultPadding,vertical: defaultPadding),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('What is your full name?',style: TextStyle(color: primaryBlueColor,fontSize: 18,fontWeight: FontWeight.w600),),
                            SizedBox(height: 20),
                            TextFormField(
                              decoration: InputDecoration(
                                filled: true,
                                  fillColor: Colors.white,
                                  hintText: 'e.g Micheal Jordan',
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: lightGrayBorderColor,
                                          width: 1
                                      )
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: primaryGreenColor,
                                        width: 1,
                                      )
                                  )
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: defaultPadding,vertical: defaultPadding),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('What is your email ID?',style: TextStyle(color: primaryBlueColor,fontSize: 18,fontWeight: FontWeight.w600),),
                            SizedBox(height: 20),
                            TextFormField(
                              cursorColor: Colors.black,
                              cursorWidth: 1.0,
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  hintText: 'e.g micheal@jordan.com',
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: lightGrayBorderColor,
                                          width: 1
                                      )
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: primaryGreenColor,
                                        width: 1,
                                      )
                                  )
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: defaultPadding,vertical: defaultPadding),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('What is your phone number?',style: TextStyle(color: primaryBlueColor,fontSize: 18,fontWeight: FontWeight.w600),),
                            SizedBox(height: 20),
                            TextFormField(
                              decoration: InputDecoration(
                                filled: true,
                                  fillColor: Colors.white,
                                  hintText: 'e.g +44 123 1231123',
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: lightGrayBorderColor,
                                          width: 1
                                      )
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: primaryGreenColor,
                                        width: 1,
                                      )
                                  )
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: defaultPadding,vertical: defaultPadding),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('What is your full name?',style: TextStyle(color: primaryBlueColor,fontSize: 18,fontWeight: FontWeight.w600),),
                            SizedBox(height: 20),
                            TextFormField(
                              decoration: InputDecoration(
                                filled: true,
                                  fillColor: Colors.white,
                                  hintText: 'e.g Micheal Jordan',
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: lightGrayBorderColor,
                                          width: 1
                                      )
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: primaryGreenColor,
                                        width: 1,
                                      )
                                  )
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: MaterialButton(
                          padding: EdgeInsets.symmetric(vertical: 15,horizontal: 46.0),
                          onPressed: () {},
                          color: primaryGreenColor,
                          textColor: Colors.white,
                          child: Text('Continue >',style: TextStyle(fontSize: 22.0,fontWeight: FontWeight.w600),),
                          shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(
                              color: primaryGreenColor,
                            ),
                          ),

                        ),
                      )
                    ],
                  ),
                )


              ],
            ),
          ),
        ),
      ),
    );
  }
}
